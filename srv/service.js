const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    const { MESStrokes, MESStrokes_insert, Plant, MRPPlanner, ChangeReasons, MESInterfaces, MovementReasons, NetProductions } = this.entities;
    const messaging = await cds.connect.to('messaging')
    const log = cds.log('ProductionFactsService')
    messaging.on('productionfacts', async (msg) => { 
        log.info('Received a message from topic ball/emdev/ecc-cons/productionfacts')
        let con = await cds.connect.to('searchHelp');
        let netSap = await con.run(SELECT.from('NetProductionSet').where({
                                    Mblnr : msg.data.objectId.substring(0, 10),
                                    Mjahr : msg.data.objectId.substring(10) }))
        if (resMrps.length > 0) {
            let netProduction = [];
            for (const entry of netSap) {
                netProduction.push({
                    MaterialDocument: entry.Mblnr,
                    MaterialDocumentYear: entry.Mjahr,
                    MaterialDocumentItem: entry.Zeile,
                    centro: entry.Werks,
                    planejadorMrp: entry.Dispo,
                    dataLancamento: entry.Budat,
                    centroTrabalho: entry.Arbpl, // Não existe no SAP
                    numeroMaterial: entry.Matnr,
                    goal: entry.Goal, // ok
                    tendency: entry.Tende, 
                    spoilage: entry.Spoil,
                    hfiGenerated: entry.Hfige, // validar pelo GRUND FactoryResponsability = true
                    finishedGood: entry.Fgood, // ok
                    average: entry.Avera,
                    totalProduction: entry.Totpr, // ok
                    productionCupMinster: entry.Prcup, // MES Strokes ncoup / 1000
                    hfiGeneratedPercentage: (Number.parseInt(entry.Totpr) > 0)? ( entry.Hfige / entry.Totpr ) * 100: 0, // rever hfige
                    hfiReleasedPlant: entry.Hrlpl, //ok
                    hfiReleasedOtherPlant: entry.Hrlop, // validar pelo GRUND FactoryResponsability = true
                    scrapPlantNoRespons: entry.Spnrp, // validar pelo GRUND FactoryResponsability = false
                    scrapPlantRespons: entry.Scplr, // validar pelo GRUND FactoryResponsability = true
                    scrapOtherPlant: entry.Scopl, // ok
                    totalReleased: entry.Totre, // ok
                    eorGeneration: entry.Eorge, //ok
                    eorReleased: entry.Eorrl, //ok
                    eorHfiGeneration: entry.Eorhi, // ok
                    eorBalance: entry.Eorbl, //ok
                    plantResponsibilityReport: entry.RespPlan, // validar pelo GRUND FactoryResponsability = true
                    inventory: entry.Invent, //ok
                    shellEndsProduction: entry.Bendpr, //ok
                    shellEndsScrap: entry.Bendsc, // ok
                    insertionDate: new Date().toISOString().substring(0, 10),
                    insertionTime: new Date().toISOString().substring(11, 19),
                    //modificationDate: entry.ZpmModfd,
                    //modificationTime: entry.ZpmModfh,
                    //text: entry.Texto,
                    //hfiGeneratedNoResp: entry.HfigeNo,
                    //hfiReleasedPlantNoResp: entry.HrlplNo,
                    mrpGroup: entry.Disgr,
                    grund: entry.Grund,
                    })    
                }
        
            await cds.run(UPSERT.into(NetProductions).entries(netProduction));
        }
    })
    //MesStrokes
    this.after('READ', [MESStrokes, 'ProductionFactsService.MESStrokes.drafts'], async (list, req) => {
        const select = req.query.SELECT;
        let con = await cds.connect.to('searchHelp');
        if (!select.columns) return list;
        let expandMrp = select.columns.findIndex(
            ({ expand, ref }) => expand && ref[0] === "_mrpController"
        );
        let resMrps;
        if(expandMrp > 0){
            let mrps = list.map(l => l.mrpController)
            resMrps = con.run(SELECT.from(MRPPlanner).where({mrpPlanner: mrps}));
        }else{
            resMrps = []
        }
        
        if(resMrps instanceof Promise) resMrps = await resMrps;
        
        list.forEach(line =>{
            resMrps.find(el =>{
                if (line.mrpController === el.mrpPlanner && line.center === el.plant) {
                    line._mrpController = el
                }
            })
        })
        
        return list
    });

    this.on('READ', ['ProductionFactsService.MovReason'], async (req) => {

    });

    this.on('READ', ['ProductionFactsService.MESStrokes.drafts', 
        'ProductionFactsService.ChangeReasons.drafts', 
        'ProductionFactsService.MESInterfaces.drafts'], async (req) => {
        //console.log("ooooooolaaaaaaaa");
        //console.log(req);
        if(req.subject.ref[0].where){
            return (cds.run(req.query))
        } else  return []
    });


    this.on('READ', [Plant, MRPPlanner], async (req) => {
        const con = await cds.connect.to('searchHelp')
        return con.run(req.query)
    });


    this.before('CREATE', [MESStrokes], async (list, req) => {
        if (list.data.changeReason_description == null || list.data.changeReason_description.length == 0) {
            list.reject(400, 'Informe o motivo da alteração');
        }

        //usuário sap
        const user = new cds.User.Privileged
        //list.data.lastChangeBy = user.id;
        list.data.lastChangeBy = list.user.id;

        //data atual AAAA-MM-DD
        const currentDate = new Date();
        const formattedDate = `${currentDate.getFullYear()}-${String(currentDate.getMonth() + 1).padStart(2, '0')}-${String(currentDate.getDate()).padStart(2, '0')}`;
        list.data.lastChangeDate = formattedDate;

        // hora atual formatada em horas:minutos:segundos
        const formattedTime = new Intl.DateTimeFormat('pt-BR', {
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            timeZone: 'America/Sao_Paulo'
        }).format(currentDate);
        list.data.lastChangeTime = formattedTime;


    });

    //this.after('CREATE', [MESStrokes], async (list, req) => {
        

    //});

    this.before('UPDATE', [MESStrokes], async (list, req) => {
        //usuário sap
        const user = new cds.User.Privileged
        //list.data.lastChangeBy = user.id;
        list.data.lastChangeBy = list.user.id;

        //data atual AAAA-MM-DD
        const currentDate = new Date();
        const formattedDate = `${currentDate.getFullYear()}-${String(currentDate.getMonth() + 1).padStart(2, '0')}-${String(currentDate.getDate()).padStart(2, '0')}`;
        list.data.lastChangeDate = formattedDate;

        // hora atual formatada em horas:minutos:segundos
        //const formattedTime = `${String(currentDate.getHours()).padStart(2, '0')}:${String(currentDate.getMinutes()).padStart(2, '0')}:${String(currentDate.getSeconds()).padStart(2, '0')}`;
        const formattedTime = new Intl.DateTimeFormat('pt-BR', {
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            timeZone: 'America/Sao_Paulo'
        }).format(currentDate);
        list.data.lastChangeTime = formattedTime;

        if (list.data.changeReason_description == null || list.data.changeReason_description.length == 0) {
            list.reject(400, 'Informe o motivo da alteração');
        }
        
    });

    //Criação via http para MESStrokes, passando por uma tabela de staging
    this.on('CREATE', 'MESStrokes_insert', async (req) => {
        const srv = await cds.connect.to('db');
        await srv.run(INSERT.into('PRODUCTION_FACTS_MESSTROKES').entries(req.data))
       
        return (req.data)
    })

    //Movement-Reasons
    this.before('UPDATE', [MovementReasons, 'ProductionFactsService.MovementReasons.drafts'], async (list, req) => {
        
        
    });

    //NetProductions
    this.after('READ', [NetProductions], async (list, req) => {
        // //console.log('testeeeeeeeeiiiiiiiiiiiiiiiiii')
        // const select = req.query.SELECT;
        // let con = await cds.connect.to('searchHelpNet');
        // let resMrps = await con.run(SELECT.from('NetProductionSet'));
        // let x = resMrps;
        // //CPUDT
        // //return list
    });



});