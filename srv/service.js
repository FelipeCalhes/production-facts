const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    const { MESStrokes, Plant, MRPPlanner, ChangeReasons, MESInterfaces, MovementReasons, NetProductions } = this.entities;

    this.after('READ', [MESStrokes, 'ProductionFactsService.MESStrokes.drafts'], async (list, req) => {
        //console.log('testeeeeeeeeiiiiiiiiiiiiiiiiii')
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

    this.on('READ', 'ProductionFactsService.MESStrokes.drafts', async (req) => {
        if(req.subject.ref[0].where){
            return (cds.run(req.query))
        } else  return []
    });


    this.on('READ', [Plant, MRPPlanner], async (req) => {
        const con = await cds.connect.to('searchHelp')
        return con.run(req.query)
    });

    // this.on('READ', [MRPPlanner], async (req) => {
    //     console.log('maaaaaaaaaaiiiiiiiiiiissssssssss')

    // });

    // this.on('CREATE', [MESStrokes], async (list, req) => {
    //     console.log('testeeeeeeeeiiiiiiiiiiiiiiiiii')
    // });

    // this.before('CREATE', [MESStrokes], async (list, req) => {
    //     console.log('testaaaaaaannnnndooooooooooooooooooo')
    // });


    this.before('UPDATE', [MESStrokes], async (list, req) => {
        //console.log('testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee')
        //req.info(200, 'Alteração aceita');
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

        // if (1 == 2)
        //     console.log('teste')
        // //const sapUser = req.user.id
        
        
    });

    this.before('UPDATE', [MESInterfaces, 'ProductionFactsService.MESInterfaces.drafts'], async (list, req) => {
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

    //Net-Production

});