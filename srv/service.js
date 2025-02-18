const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    const { MESStrokes, Plant, MRPPlanner, ChangeReasons, MESInterfaces, MovementReasons, NetProductions } = this.entities;
    const changeReasons = [
        { id: 'A', description: 'Cálculo de OUT errado' },
        { id: 'B', description: 'Cálculo de strokes errado' },
        { id: 'C', description: 'Dreno de linha' },
        { id: 'D', description: 'Falha no FTTM (transporte para o SAP)' },
        { id: 'E', description: 'Falha no PLC da Minster' },
        { id: 'F', description: 'Reconhecimento de copos novelis' }
    ]

    // this.on('READ', req =>{
    //     return cds.run(req.query)
    // })
    //Credit-Strokes
    this.after('READ', [MESStrokes, 'ProductionFactsService.MESStrokes.drafts'], async (list, req) => {
        const select = req.query.SELECT;
        let con = await cds.connect.to('searchHelp');
        if (!select.columns) return list;
        let expandPlant = select.columns.findIndex(
            ({ expand, ref }) => expand && ref[0] === "_plant"
        );
        let expandMrp = select.columns.findIndex(
            ({ expand, ref }) => expand && ref[0] === "_mrpController"
        );
        let resPlants, resMrps;
        if(expandPlant > 0){
            let plants = list.map(l => l.center)
            resPlants = con.run(SELECT.from(Plant).where({plant: plants}));
        }else{
            resPlants = []
        }
        if(expandMrp > 0){
            let mrps = list.map(l => l.mrpController)
            resMrps = con.run(SELECT.from(MRPPlanner).where({mrpPlanner: mrps}));
        }else{
            resMrps = []
        }
        
        if(resMrps instanceof Promise) resMrps = await resMrps
        if(resPlants instanceof Promise) resPlants = await resPlants
        
        list.forEach(line =>{
            resPlants.find(el =>{
                if (line.center === el.plant){
                    line._plant = el
                }
            })
            resMrps.find(el =>{
                if (line.mrpPlanner === el.MRPPlanner){
                    line._mrpController = el
                }
            })
            changeReasons.find(el =>{
                if (line.changeReason === el.id){
                    line._changeReason = el
                }
            })

            //line.lastChangedBy = 'Lucas'
        })
        
        return list
    });

    this.on('READ', 'ProductionFactsService.MESStrokes/_plant',  async (req) => {
        //return cds.run(req.query)
        const con = await cds.connect.to('searchHelp')
        return con.run(SELECT.from(Plant).where({plant: req.params[0].center}))
    });

    this.on('READ', ChangeReasons,  async (req) => {
        return changeReasons
    });


    this.on('READ', [Plant, MRPPlanner], async (req) => {
        const con = await cds.connect.to('searchHelp')
        return con.run(req.query)
    });

    this.before('UPDATE', [MESStrokes, 'ProductionFactsService.MESStrokes.drafts'], async (list, req) => {
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

        if (list.data.changeReason == null || list.data.changeReason.length == 0) {
            list.reject(400, 'Informe o motivo da alteração');
        }

        // if (1 == 2)
        //     console.log('teste')
        // //const sapUser = req.user.id
        
        
    });

    this.before('UPDATE', [MESInterfaces, 'ProductionFactsService.MESInterfaces.drafts'], async (list, req) => {
        
        list.data.creditoOuDebito = list.data.creditoOuDebito.toUpperCase();
        if (list.data.creditoOuDebito != 'H' && list.data.creditoOuDebito != 'S') {
            list.reject(400, 'Digite H para crédito ou S para débito');
        }
        
        
    });

    //Movement-Reasons
    this.before('UPDATE', [MovementReasons, 'ProductionFactsService.MovementReasons.drafts'], async (list, req) => {
        
        list.data.creditoOuDebito = list.data.creditoOuDebito.toUpperCase();
        if (list.data.creditoOuDebito != 'H' && list.data.creditoOuDebito != 'S') {
            list.reject(400, 'Digite H para crédito ou S para débito');
        }
        
        
    });

    //Net-Production

});