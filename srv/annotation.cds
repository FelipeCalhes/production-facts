using {ProductionFactsService as srv} from './service';

//Credit-Strokes
annotate srv.MESStrokes with @odata.draft.enabled {
    @title: 'Centro'
    @Common.ValueList: {
        CollectionPath: 'Plant',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'center',
                ValueListProperty: 'plant',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'plantName'
            }
        ]
    }
    center;

    @Common.ValueList: {
        CollectionPath: 'MRPPlanner',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'center',
                ValueListProperty: 'plant',
            },
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'mrpController',
                ValueListProperty: 'mrpPlanner',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description'
            }
        ]
    }
    @title: 'MRP Controller'
    @Common.Label: 'MRP Controller'
    mrpController;
    @title: 'Data de Produção'
    productionDate;

    @title: 'Quantidade de Strokes'
    strokesQuantity;

    @title: 'Saídas por Strokes'
    outsPerStroke;

    @title: 'Quantidade de Cups'
    cupsQuantity;

    @Common.ValueList: {
        CollectionPath: 'ChangeReasons',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'changeReason',
                ValueListProperty: 'id',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description'
            }
        ]
    }
    @title: 'Motivo da Mudança'
    changeReason;

    @title: 'Data da Última Mudança'
    @readonly
    lastChangeDate;

    @title: 'Hora da Última Mudança'
    @readonly
    lastChangeTime;

    @title: 'Alterado Por'
    @readonly
    lastChangeBy;

}

annotate srv.MESInterfaces with @odata.draft.enabled {
    @title: 'Mes Reason'
    mesReason;

    @title: 'Sap Reason'
    sapReason;

    @title: 'Fact.Resp'
    factResp;

    @title: 'H/S'
    creditoOuDebito;
}
//Movement-Reasons
annotate srv.MovementReasons with @odata.draft.enabled {
    @title: 'Mes Reason'
    mesReason;

    @title: 'Sap Reason'
    sapReason;

    @title: 'Fact.Resp'
    factResp;

    @title: 'H/S'
    creditoOuDebito;
}


//Net-Production
annotate srv.NetProductions with @odata.draft.enabled { //@readonly { //@odata.draft.enabled {
    // @title: 'Client'
    // mandante;

    @title: 'Plant'
    centro;

    @title: 'MRP Planner'
    planejadorMrp;

    @title: 'Release Date'
    dataLancamento;

    @title: 'Work Center'
    centroTrabalho;

    @title: 'Material Number'
    numeroMaterial;
    
    @title: 'Goal'
    goal;

    @title: 'Tendency'
    tendency;

    @title: 'Spoilage'
    spoilage;

    @title: 'HFI Generated'
    hfiGenerated;

    @title: 'Finished Good'
    finishedGood;

    @title: 'Average'
    average;

    @title: 'Total Production'
    totalProduction;

    @title: 'Production Cup Minster'
    productionCupMinster;

    @title: 'HFI Generated (%)'
    hfiGeneratedPercentage;
    
    @title: 'HFI Released Plant'
    hfiReleasedPlant;

    @title: 'HFI Released Other Plant'
    hfiReleasedOtherPlant;

    @title: 'Scrap Plant No Respons'
    scrapPlantNoRespons;

    @title: 'Scrap Plant Respons'
    scrapPlantRespons;

    @title: 'Scrap Other Plant'
    scrapOtherPlant;

    @title: 'Total Released'
    totalReleased;

    @title: 'EOR Generation'
    eorGeneration;

    @title: 'EOR Released'
    eorReleased;

    @title: 'EOR HFI Generation'
    eorHfiGeneration;

    @title: 'EOR Balance'
    eorBalance;
    
    @title: 'Plant Responsibility Report'
    plantResponsibilityReport;

    @title: 'Inventory'
    inventory;

    @title: 'Shell Ends Production'
    shellEndsProduction;

    @title: 'Shell Ends Scrap'
    shellEndsScrap;

    @title: 'Insertion Date'
    insertionDate;

    @title: 'Insertion Time'
    insertionTime;

    @title: 'Modification Date'
    modificationDate;

    @title: 'Modification Time'
    modificationTime;

    @title: 'Text'
    text;

    @title: 'HFI Generated No Resp'
    hfiGeneratedNoResp;

    @title: 'HFI Released Plant No Resp'
    hfiReleasedPlantNoResp;

    @title: 'MRP Group'
    mrpGroup;
    
}

//Permitir entrada http sem rascunho
annotate srv.MESStrokes with @odata.draft.bypass;
annotate srv.NetProductions with @odata.draft.bypass;

//impedir que o usuário crie, modifique ou exclua registros em NetProductions
annotate srv.NetProductions with @UI.CreateHidden : true;
annotate srv.NetProductions with @UI.UpdateHidden : true;
annotate srv.NetProductions with @UI.DeleteHidden : true;
//annotate srv.NetProductions with @UI.LineItem: [{Value: centro}];
//annotate srv.MESInterfaces with @odata.draft.bypass;
