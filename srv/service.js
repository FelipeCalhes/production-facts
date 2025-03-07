const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { MESStrokes, MESStrokes_insert, Plant, MRPPlanner, ChangeReasons, MESInterfaces, MovementReasons, NetProductions, MovReason } = this.entities;
    const messaging = await cds.connect.to('messaging')
    const log = cds.log('ProductionFactsService')
    messaging.on('productionfacts', async (msg) => {
        log.info('Received a message from topic ball/emdev/ecc-cons/productionfacts')
        let con = await cds.connect.to('searchHelp');
        let netSap = await con.run(SELECT.from('NetProductionSet').where({
            Mblnr: msg.data.objectId.substring(0, 10),
            Mjahr: msg.data.objectId.substring(10)
        }))
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
                    hfiGeneratedPercentage: (Number.parseInt(entry.Totpr) > 0) ? (entry.Hfige / entry.Totpr) * 100 : 0, // rever hfige
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
        if (expandMrp > 0) {
            let mrps = list.map(l => l.mrpController)
            resMrps = con.run(SELECT.from(MRPPlanner).where({ mrpPlanner: mrps }));
        } else {
            resMrps = []
        }

        if (resMrps instanceof Promise) resMrps = await resMrps;

        list.forEach(line => {
            resMrps.find(el => {
                if (line.mrpController === el.mrpPlanner && line.center === el.plant) {
                    line._mrpController = el
                }
            })
        })

        return list
    });

    this.on('READ', ['ProductionFactsService.MESStrokes.drafts',
        'ProductionFactsService.ChangeReasons.drafts',
        'ProductionFactsService.MESInterfaces.drafts'], async (req) => {
            //console.log("ooooooolaaaaaaaa");
            //console.log(req);
            if (req.subject.ref[0].where) {
                return (cds.run(req.query))
            } else return []
        });


    this.on('READ', [Plant, MRPPlanner, MovReason], async (req) => {
        const con = await cds.connect.to('searchHelp')
        return con.run(req.query)
    });

        //PLANO B
    // this.on('READ', [MovReason], async (req) => {
    //     const con = await cds.connect.to('searchHelp')
    //     let selectoptions = req.query.SELECT

    //     let resp = await con.run(SELECT.from(MovReason))

    //     function sortArray(array, orderBy) {
    //         return array.sort((a, b) => {
    //             for (let condition of orderBy) {
    //                 const key = condition.ref[0]; 
    //                 const sortOrder = condition.sort === "asc" ? 1 : -1; 

    //                 if (a[key] < b[key]) return -1 * sortOrder;
    //                 if (a[key] > b[key]) return 1 * sortOrder;
    //             }
    //             return 0; 
    //         });
    //     }

    //     function filterArray(data, filters) {
    //         let i = 0;
          
    //         function evaluateCondition() {
    //           if (i >= filters.length) return true; // Default to true if no conditions          
    //           let left = filters[i];
    //           let operator = filters[i + 1];
    //           let right = filters[i + 2];          
    //           if (!left || !operator || !right) return false;         
    //           i += 3;          
    //           if (left.ref && right.val !== undefined) {
    //             let key = left.ref[0];
    //             let value = right.val;          
    //             return (item) => {
    //               if (operator === "=") return item[key] == value;
    //               if (operator === "!=") return item[key] != value;
    //               if (operator === ">") return item[key] > value;
    //               if (operator === "<") return item[key] < value;
    //               return false;
    //             };
    //           }          
    //           return false;
    //         }          
    //         let conditions = [];
    //         while (i < filters.length) {
    //           let condition = evaluateCondition();
    //           if (typeof filters[i] === "string" && filters[i].toLowerCase() === "and") {
    //             i++; // Skip "and"
    //           }
    //           conditions.push(condition);
    //         }          
    //         return data.filter((item) => conditions.every((cond) => cond(item)));
    //       }
    //     let filtered = filterArray(resp, selectoptions.where);
    //     let sortedResp = sortArray(filtered, selectoptions.orderBy);
    //     return sortedResp

    //     // return con.run(req.query)
    // });


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

    this.after('CREATE', [MESStrokes], async (list, req) => {
    });

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

    // this.after('READ', [MESInterfaces, 'ProductionFactsService.MESInterfaces.drafts'], async (list, req) => {
    //     const select = req.query.SELECT;
    //     let con = await cds.connect.to('searchHelp');
    //     if (!select.columns) return list;
    //     let expandRsn = select.columns.findIndex(
    //         ({ expand, ref }) => expand && ref[0] === "_movReasons"
    //     );
    //     let resRsn;
    //     if (expandRsn > 0) {
    //         let sapReason = list.map(l => l.sapReason)
    //         let movTyp = '344'
    //         //Languages: P (pt_br) portuguese, E (en) english, S (es) spanish
    //         resRsn = con.run(SELECT.from(MovReason).where({ MovementReason: sapReason })); //, MovType: movTyp 
    //     } else {
    //         resRsn = []
    //     }
    //     if (resRsn instanceof Promise) resRsn = await resRsn;
    //     list.forEach(line => {
    //         resRsn.find(el => {
    //             if (line.sapReason === el.MovementReason && el.MovType === '344') {
    //                 line._movReasons = el
    //             }
    //         })
    //     })
    //     return list
    // });

    this.before('CREATE', [MESInterfaces], async (list, req) => {
        list.data.lastChangeBy = list.user.id;
        const currentDate = new Date();
        const formattedDate = `${currentDate.getFullYear()}-${String(currentDate.getMonth() + 1).padStart(2, '0')}-${String(currentDate.getDate()).padStart(2, '0')}`;
        list.data.lastChangeDate = formattedDate;
        const formattedTime = new Intl.DateTimeFormat('pt-BR', {
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            timeZone: 'America/Sao_Paulo'
        }).format(currentDate);
        list.data.lastChangeTime = formattedTime;
    });

    this.after('CREATE', [MESInterfaces], async (list, req) => {
    });

    this.before('UPDATE', [MESInterfaces, 'ProductionFactsService.MESInterfaces.drafts'], async (list, req) => {
        list.data.lastChangeBy = list.user.id;
        const currentDate = new Date();
        const formattedDate = `${currentDate.getFullYear()}-${String(currentDate.getMonth() + 1).padStart(2, '0')}-${String(currentDate.getDate()).padStart(2, '0')}`;
        list.data.lastChangeDate = formattedDate;
        const formattedTime = new Intl.DateTimeFormat('pt-BR', {
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            timeZone: 'America/Sao_Paulo'
        }).format(currentDate);
        list.data.lastChangeTime = formattedTime;
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