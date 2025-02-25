using ProductionFactsService as service from '../../srv/service';
annotate service.NetProductions with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Value : centro,
            Label : '{@i18n>Plant}',
            },
            {
            $Type : 'UI.DataField',
            Value : planejadorMrp,
            Label : '{@i18n>MRP_Planner}',
            },
            {
            $Type : 'UI.DataField',
            Value : dataLancamento,
            Label : '{@i18n>Release_Date}',
            },
            {
            $Type : 'UI.DataField',
            Value : centroTrabalho,
            Label : '{@i18n>Work_Center}',
            },
            {
            $Type : 'UI.DataField',
            Value : numeroMaterial,
            Label : '{@i18n>Material_Number}',
            },
            {
            $Type : 'UI.DataField',
            Value : goal,
            Label : '{@i18n>Goal}',
            },
            {
            $Type : 'UI.DataField',
            Value : tendency,
            Label : '{@i18n>Tendency}',
            },
            {
            $Type : 'UI.DataField',
            Value : spoilage,
            Label : '{@i18n>Spoilage}',
            },
            {
            $Type : 'UI.DataField',
            Value : hfiGenerated,
            Label : '{@i18n>HFI_Generated}',
            },
            {
            $Type : 'UI.DataField',
            Value : finishedGood,
            Label : '{@i18n>Finished_Good}',
            },
            {
            $Type : 'UI.DataField',
            Value : average,
            Label : '{@i18n>Average}',
            },
            {
            $Type : 'UI.DataField',
            Value : totalProduction,
            Label : '{@i18n>Total_Production}',
            },
            {
            $Type : 'UI.DataField',
            Value : productionCupMinster,
            Label : '{@i18n>Production_Cup_Minster}',
            },
            {
            $Type : 'UI.DataField',
            Value : hfiGeneratedPercentage,
            Label : '{@i18n>HFI_Generated_Percentage}',
            },
            {
            $Type : 'UI.DataField',
            Value : hfiReleasedPlant,
            Label : '{@i18n>HFI_Released_Plant}',
            },
            {
            $Type : 'UI.DataField',
            Value : hfiReleasedOtherPlant,
            Label : '{@i18n>HFI_Released_Other_Plant}',
            },
            {
            $Type : 'UI.DataField',
            Value : scrapPlantNoRespons,
            Label : '{@i18n>Scrap_Plant_No_Respons}',
            },
            {
            $Type : 'UI.DataField',
            Value : scrapPlantRespons,
            Label : '{@i18n>Scrap_Plant_Respons}',
            },
            {
            $Type : 'UI.DataField',
            Value : scrapOtherPlant,
            Label : '{@i18n>Scrap_Other_Plant}',
            },
            {
            $Type : 'UI.DataField',
            Value : totalReleased,
            Label : '{@i18n>Total_Released}',
            },
            {
            $Type : 'UI.DataField',
            Value : eorGeneration,
            Label : '{@i18n>EOR_Generation}',
            },
            {
            $Type : 'UI.DataField',
            Value : eorReleased,
            Label : '{@i18n>EOR_Released}',
            },
            {
            $Type : 'UI.DataField',
            Value : eorHfiGeneration,
            Label : '{@i18n>EOR_HFI_Generation}',
            },
            {
            $Type : 'UI.DataField',
            Value : eorBalance,
            Label : '{@i18n>EOR_Balance}',
            },
            {
            $Type : 'UI.DataField',
            Value : plantResponsibilityReport,
            Label : '{@i18n>Plant_Responsibility_Report}',
            },
            {
            $Type : 'UI.DataField',
            Value : inventory,
            Label : '{@i18n>Inventory}',
            },
            {
            $Type : 'UI.DataField',
            Value : shellEndsProduction,
            Label : '{@i18n>Shell_Ends_Production}',
            },
            {
            $Type : 'UI.DataField',
            Value : shellEndsScrap,
            Label : '{@i18n>Shell_Ends_Scrap}',
            },
            {
            $Type : 'UI.DataField',
            Value : insertionDate,
            Label : '{@i18n>Insertion_Date}',
            },
            {
            $Type : 'UI.DataField',
            Value : insertionTime,
            Label : '{@i18n>Insertion_Time}',
            },
            {
            $Type : 'UI.DataField',
            Value : modificationDate,
            Label : '{@i18n>Modification_Date}',
            },
            {
            $Type : 'UI.DataField',
            Value : modificationTime,
            Label : '{@i18n>Modification_Time}',
            },
            {
            $Type : 'UI.DataField',
            Value : text,
            Label : '{@i18n>Text}',
            },
            {
            $Type : 'UI.DataField',
            Value : hfiGeneratedNoResp,
            Label : '{@i18n>HFI_Generated_No_Resp}',
            },
            {
            $Type : 'UI.DataField',
            Value : hfiReleasedPlantNoResp,
            Label : '{@i18n>HFI_Released_Plant_No_Resp}',
            },
            {
            $Type : 'UI.DataField',
            Value : mrpGroup,
            Label : '{@i18n>MRP_Group}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : centro,
            Label : '{@i18n>Plant}',
        },
        {
            $Type : 'UI.DataField',
            Value : planejadorMrp,
            Label : '{@i18n>MRP_Planner}',
        },
        {
            $Type : 'UI.DataField',
            Value : dataLancamento,
            Label : '{@i18n>Release_Date}',
        },
        {
            $Type : 'UI.DataField',
            Value : centroTrabalho,
            Label : '{@i18n>Work_Center}',
        },
        {
            $Type : 'UI.DataField',
            Value : numeroMaterial,
            Label : '{@i18n>Material_Number}',
        },
        {
            $Type : 'UI.DataField',
            Value : goal,
            Label : '{@i18n>Goal}',
        },
        {
            $Type : 'UI.DataField',
            Value : tendency,
            Label : '{@i18n>Tendency}',
        },
        {
            $Type : 'UI.DataField',
            Value : spoilage,
            Label : '{@i18n>Spoilage}',
        },
        {
            $Type : 'UI.DataField',
            Value : hfiGenerated,
            Label : '{@i18n>HFI_Generated}',
        },
        {
            $Type : 'UI.DataField',
            Value : finishedGood,
            Label : '{@i18n>Finished_Good}',
        },
        {
            $Type : 'UI.DataField',
            Value : average,
            Label : '{@i18n>Average}',
        },
        {
            $Type : 'UI.DataField',
            Value : totalProduction,
            Label : '{@i18n>Total_Production}',
        },
        {
            $Type : 'UI.DataField',
            Value : productionCupMinster,
            Label : '{@i18n>Production_Cup_Minster}',
        },
        {
            $Type : 'UI.DataField',
            Value : hfiGeneratedPercentage,
            Label : '{@i18n>HFI_Generated_Percentage}',
        },
        {
            $Type : 'UI.DataField',
            Value : hfiReleasedPlant,
            Label : '{@i18n>HFI_Released_Plant}',
        },
        {
            $Type : 'UI.DataField',
            Value : hfiReleasedOtherPlant,
            Label : '{@i18n>HFI_Released_Other_Plant}',
        },
        {
            $Type : 'UI.DataField',
            Value : scrapPlantNoRespons,
            Label : '{@i18n>Scrap_Plant_No_Respons}',
        },
        {
            $Type : 'UI.DataField',
            Value : scrapPlantRespons,
            Label : '{@i18n>Scrap_Plant_Respons}',
        },
        {
            $Type : 'UI.DataField',
            Value : scrapOtherPlant,
            Label : '{@i18n>Scrap_Other_Plant}',
        },
        {
            $Type : 'UI.DataField',
            Value : totalReleased,
            Label : '{@i18n>Total_Released}',
        },
        {
            $Type : 'UI.DataField',
            Value : eorGeneration,
            Label : '{@i18n>EOR_Generation}',
        },
        {
            $Type : 'UI.DataField',
            Value : eorReleased,
            Label : '{@i18n>EOR_Released}',
        },
        {
            $Type : 'UI.DataField',
            Value : eorHfiGeneration,
            Label : '{@i18n>EOR_HFI_Generation}',
        },
        {
            $Type : 'UI.DataField',
            Value : eorBalance,
            Label : '{@i18n>EOR_Balance}',
        },
        {
            $Type : 'UI.DataField',
            Value : plantResponsibilityReport,
            Label : '{@i18n>Plant_Responsibility_Report}',
        },
        {
            $Type : 'UI.DataField',
            Value : inventory,
            Label : '{@i18n>Inventory}',
        },
        {
            $Type : 'UI.DataField',
            Value : shellEndsProduction,
            Label : '{@i18n>Shell_Ends_Production}',
        },
        {
            $Type : 'UI.DataField',
            Value : shellEndsScrap,
            Label : '{@i18n>Shell_Ends_Scrap}',
        },
        {
            $Type : 'UI.DataField',
            Value : insertionDate,
            Label : '{@i18n>Insertion_Date}',
        },
        {
            $Type : 'UI.DataField',
            Value : insertionTime,
            Label : '{@i18n>Insertion_Time}',
        },
        {
            $Type : 'UI.DataField',
            Value : modificationDate,
            Label : '{@i18n>Modification_Date}',
        },
        {
            $Type : 'UI.DataField',
            Value : modificationTime,
            Label : '{@i18n>Modification_Time}',
        },
        {
            $Type : 'UI.DataField',
            Value : text,
            Label : '{@i18n>Text}',
        },
        {
            $Type : 'UI.DataField',
            Value : hfiGeneratedNoResp,
            Label : '{@i18n>HFI_Generated_No_Resp}',
        },
        {
            $Type : 'UI.DataField',
            Value : hfiReleasedPlantNoResp,
            Label : '{@i18n>HFI_Released_Plant_No_Resp}',
        },
        {
            $Type : 'UI.DataField',
            Value : mrpGroup,
            Label : '{@i18n>MRP_Group}',
        },
    ],
    UI.SelectionFields : [
        centro,
        planejadorMrp,
        dataLancamento,
        centroTrabalho,
        numeroMaterial,
    ],
);
