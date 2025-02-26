const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    const { MESStrokes, MESStrokes_insert, Plant, MRPPlanner, ChangeReasons, MESInterfaces, MovementReasons, NetProductions } = this.entities;

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

    this.on('READ', ['ProductionFactsService.MESStrokes.drafts', 'ProductionFactsService.ChangeReasons.drafts'], async (req) => {
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
        const formattedTime = `${String(currentDate.getHours()).padStart(2, '0')}:${String(currentDate.getMinutes()).padStart(2, '0')}:${String(currentDate.getSeconds()).padStart(2, '0')}`;
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
        const formattedTime = `${String(currentDate.getHours()).padStart(2, '0')}:${String(currentDate.getMinutes()).padStart(2, '0')}:${String(currentDate.getSeconds()).padStart(2, '0')}`;
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

    //Rascunho de Movement-Reasons
    this.before('UPDATE', [MESInterfaces], async (list, req) => {
        if (list.data && list.data.creditoOuDebito) {
            list.data.creditoOuDebito = list.data.creditoOuDebito.toUpperCase();
            if (list.data.creditoOuDebito != 'H' && list.data.creditoOuDebito != 'S') {
                list.reject(400, 'Digite H para crédito ou S para débito');
            }
        }
        
    });

    //Movement-Reasons
    this.before('UPDATE', [MovementReasons, 'ProductionFactsService.MovementReasons.drafts'], async (list, req) => {
        if (list.data && list.data.creditoOuDebito) {

            list.data.creditoOuDebito = list.data.creditoOuDebito.toUpperCase();
            if (list.data.creditoOuDebito != 'H' && list.data.creditoOuDebito != 'S') {
                list.reject(400, 'Digite H para crédito ou S para débito');
            }
        }
        
    });

    //NetProductions
    this.after('READ', [NetProductions], async (list, req) => {
        //console.log('testeeeeeeeeiiiiiiiiiiiiiiiiii')
        const select = req.query.SELECT;
        let con = await cds.connect.to('searchHelp');
        resMrps = con.run(SELECT.from('NetProductions'));
        
        
        return list
    });



});