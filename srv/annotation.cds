using {ProductionFactsService as srv} from './service';

//Credit-Strokes
annotate srv.MESStrokes with @odata.draft.enabled {
    @title: '{i18n>Centro}'
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
    @title: '{i18n>MRP_Controller}'
    @Common.Label: '{i18n>MRP_Controller}'
    mrpController;
    @title: '{i18n>Data_de_Producao}'
    productionDate;

    @title: '{i18n>Quantidade_de_Strokes}'
    strokesQuantity;

    @title: '{i18n>Saidas_por_Strokes}'
    outsPerStroke;

    @title: '{i18n>Quantidade_de_Cups}'
    cupsQuantity;

    @Common.ValueList: {
        CollectionPath: 'ChangeReasons',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'changeReason_description',
                ValueListProperty: 'description',
            }
        ]
    }
    @title: '{i18n>Motivo_da_Mudanca}'
    changeReason;

    @title: '{i18n>Data_da_Ultima_Mudanca}'
    @readonly
    lastChangeDate;

    @title: '{i18n>Hora_da_Ultima_Mudanca}'
    @readonly
    lastChangeTime;

    @title: '{i18n>Alterado_Por}'
    @readonly
    lastChangeBy;

    

}

annotate srv.ChangeReasons with @odata.draft.enabled {

    @title: '{i18n>Change_description}'
    description;

}

annotate srv.MESInterfaces with @odata.draft.enabled {
    @title: '{i18n>Mes_Reason}'
    mesReason;

    @title: '{i18n>Sap_Reason}'
    sapReason;

    @title: '{i18n>Fact_Resp}'
    factResp;

    @title: '{i18n>H_S}'
    creditoOuDebito;
}
//Movement-Reasons
annotate srv.MovementReasons with @odata.draft.enabled {
    @title: '{i18n>Mes_Reason}'
    mesReason;

    @title: '{i18n>Sap_Reason}'
    sapReason;

    @title: '{i18n>Fact_Resp}'
    factResp;

    @title: '{i18n>H_S}'
    creditoOuDebito;
}


//Net-Production
annotate srv.NetProductions { //@readonly { //@odata.draft.enabled {
    // @title: '{i18n>Client}'
    // mandante;

    @title: '{i18n>Plant}'
    centro;

    @title: '{i18n>MRP_Planner}'
    planejadorMrp;

    @title: '{i18n>Release_Date}'
    dataLancamento;

    @title: '{i18n>Work_Center}'
    centroTrabalho;

    @title: '{i18n>Material_Number}'
    numeroMaterial;
    
    @title: '{i18n>Goal}'
    goal;

    @title: '{i18n>Tendency}'
    tendency;

    @title: '{i18n>Spoilage}'
    spoilage;

    @title: '{i18n>HFI_Generated}'
    hfiGenerated;

    @title: '{i18n>Finished_Good}'
    finishedGood;

    @title: '{i18n>Average}'
    average;

    @title: '{i18n>Total_Production}'
    totalProduction;

    @title: '{i18n>Production_Cup_Minster}'
    productionCupMinster;

    @title: '{i18n>HFI_Generated_Percentage}'
    hfiGeneratedPercentage;
    
    @title: '{i18n>HFI_Released_Plant}'
    hfiReleasedPlant;

    @title: '{i18n>HFI_Released_Other_Plant}'
    hfiReleasedOtherPlant;

    @title: '{i18n>Scrap_Plant_No_Respons}'
    scrapPlantNoRespons;

    @title: '{i18n>Scrap_Plant_Respons}'
    scrapPlantRespons;

    @title: '{i18n>Scrap_Other_Plant}'
    scrapOtherPlant;

    @title: '{i18n>Total_Released}'
    totalReleased;

    @title: '{i18n>EOR_Generation}'
    eorGeneration;

    @title: '{i18n>EOR_Released}'
    eorReleased;

    @title: '{i18n>EOR_HFI_Generation}'
    eorHfiGeneration;

    @title: '{i18n>EOR_Balance}'
    eorBalance;
    
    @title: '{i18n>Plant_Responsibility_Report}'
    plantResponsibilityReport;

    @title: '{i18n>Inventory}'
    inventory;

    @title: '{i18n>Shell_Ends_Production}'
    shellEndsProduction;

    @title: '{i18n>Shell_Ends_Scrap}'
    shellEndsScrap;

    @title: '{i18n>Insertion_Date}'
    insertionDate;

    @title: '{i18n>Insertion_Time}'
    insertionTime;

    @title: '{i18n>Modification_Date}'
    modificationDate;

    @title: '{i18n>Modification_Time}'
    modificationTime;

    @title: '{i18n>Text}'
    text;

    @title: '{i18n>HFI_Generated_No_Resp}'
    hfiGeneratedNoResp;

    @title: '{i18n>HFI_Released_Plant_No_Resp}'
    hfiReleasedPlantNoResp;

    @title: '{i18n>MRP_Group}'
    mrpGroup;
    
}

annotate srv.MESStrokes with @(
Capabilities: {
   NavigationRestrictions : {
       $Type : 'Capabilities.NavigationRestrictionsType',
       RestrictedProperties : [
           {
               $Type : 'Capabilities.NavigationPropertyRestriction',
               NavigationProperty : DraftAdministrativeData,
               FilterRestrictions : {
                   $Type : 'Capabilities.FilterRestrictionsType',
    
                   Filterable : false,
               },
           },
       ],
   },
});

annotate srv.ChangeReasons with @(
Capabilities: {
   NavigationRestrictions : {
       $Type : 'Capabilities.NavigationRestrictionsType',
       RestrictedProperties : [
           {
               $Type : 'Capabilities.NavigationPropertyRestriction',
               NavigationProperty : DraftAdministrativeData,
               FilterRestrictions : {
                   $Type : 'Capabilities.FilterRestrictionsType',
    
                   Filterable : false,
               },
           },
       ],
   },
});

//Permitir entrada http sem rascunho
annotate srv.MESStrokes with @odata.draft.bypass;

annotate srv.NetProductions with @odata.draft.bypass;
//annotate srv. MovementReasons with @odata.draft.bypass;

//impedir a tentativa de alterar registros chave em ChangeReasons
annotate srv.ChangeReasons with @UI.UpdateHidden : true;

//impedir que o usuário crie, modifique ou exclua registros em NetProductions
annotate srv.NetProductions with @UI.CreateHidden : true;
annotate srv.NetProductions with @UI.UpdateHidden : true;
annotate srv.NetProductions with @UI.DeleteHidden : true;
//annotate srv.NetProductions with @UI.LineItem: [{Value: centro}];
//annotate srv.MESInterfaces with @odata.draft.bypass;

