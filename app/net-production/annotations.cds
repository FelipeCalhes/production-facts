using ProductionFactsService as service from '../../srv/service';
annotate service.NetProductions with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Client',
                Value : mandante,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Plant',
                Value : centro,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MRP Planner',
                Value : planejadorMrp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Release Date',
                Value : dataLancamento,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Work Center',
                Value : centroTrabalho,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Material Number',
                Value : numeroMaterial,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Goal',
                Value : goal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tendency',
                Value : tendency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Spoilage',
                Value : spoilage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HFI Generated',
                Value : hfiGenerated,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Finished Good',
                Value : finishedGood,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Average',
                Value : average,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Total Production',
                Value : totalProduction,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Production Cup Minster',
                Value : productionCupMinster,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HFI Generated (%)',
                Value : hfiGeneratedPercentage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HFI Released Plant',
                Value : hfiReleasedPlant,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HFI Released Other Plant',
                Value : hfiReleasedOtherPlant,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Scrap Plant No Respons',
                Value : scrapPlantNoRespons,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Scrap Plant Respons',
                Value : scrapPlantRespons,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Scrap Other Plant',
                Value : scrapOtherPlant,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Total Released',
                Value : totalReleased,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EOR Generation',
                Value : eorGeneration,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EOR Released',
                Value : eorReleased,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EOR HFI Generation',
                Value : eorHfiGeneration,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EOR Balance',
                Value : eorBalance,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Plant Responsibility Report',
                Value : plantResponsibilityReport,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Inventory',
                Value : inventory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Shell Ends Production',
                Value : shellEndsProduction,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Shell Ends Scrap',
                Value : shellEndsScrap,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Insertion Date',
                Value : insertionDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Insertion Time',
                Value : insertionTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Modification Date',
                Value : modificationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Modification Time',
                Value : modificationTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Text',
                Value : text,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HFI Generated No Resp',
                Value : hfiGeneratedNoResp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HFI Released Plant No Resp',
                Value : hfiReleasedPlantNoResp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MRP Group',
                Value : mrpGroup,
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
            Value : mandante,
        },
        {
            $Type : 'UI.DataField',
            Value : centro,
        },
        {
            $Type : 'UI.DataField',
            Value : planejadorMrp,
        },
        {
            $Type : 'UI.DataField',
            Value : dataLancamento,
        },
        {
            $Type : 'UI.DataField',
            Value : centroTrabalho,
        },
        {
            $Type : 'UI.DataField',
            Value : numeroMaterial,
        },
        {
            $Type : 'UI.DataField',
            Value : goal,
        },
        {
            $Type : 'UI.DataField',
            Value : tendency,
        },
        {
            $Type : 'UI.DataField',
            Value : spoilage,
        },
        {
            $Type : 'UI.DataField',
            Value : hfiGenerated,
        },
        {
            $Type : 'UI.DataField',
            Value : finishedGood,
        },
        {
            $Type : 'UI.DataField',
            Value : average,
        },
        {
            $Type : 'UI.DataField',
            Value : totalProduction,
        },
        {
            $Type : 'UI.DataField',
            Value : productionCupMinster,
        },
        {
            $Type : 'UI.DataField',
            Value : hfiGeneratedPercentage,
        },
        {
            $Type : 'UI.DataField',
            Value : hfiReleasedPlant,
        },
        {
            $Type : 'UI.DataField',
            Value : hfiReleasedOtherPlant,
        },
        {
            $Type : 'UI.DataField',
            Value : scrapPlantNoRespons,
        },
        {
            $Type : 'UI.DataField',
            Value : scrapPlantRespons,
        },
        {
            $Type : 'UI.DataField',
            Value : scrapOtherPlant,
        },
        {
            $Type : 'UI.DataField',
            Value : totalReleased,
        },
        {
            $Type : 'UI.DataField',
            Value : eorGeneration,
        },
        {
            $Type : 'UI.DataField',
            Value : eorReleased,
        },
        {
            $Type : 'UI.DataField',
            Value : eorHfiGeneration,
        },
        {
            $Type : 'UI.DataField',
            Value : eorBalance,
        },
        {
            $Type : 'UI.DataField',
            Value : plantResponsibilityReport,
        },
        {
            $Type : 'UI.DataField',
            Value : inventory,
        },
        {
            $Type : 'UI.DataField',
            Value : shellEndsProduction,
        },
        {
            $Type : 'UI.DataField',
            Value : shellEndsScrap,
        },
        {
            $Type : 'UI.DataField',
            Value : insertionDate,
        },
        {
            $Type : 'UI.DataField',
            Value : insertionTime,
        },
        {
            $Type : 'UI.DataField',
            Value : modificationDate,
        },
        {
            $Type : 'UI.DataField',
            Value : modificationTime,
        },
        {
            $Type : 'UI.DataField',
            Value : text,
        },
        {
            $Type : 'UI.DataField',
            Value : hfiGeneratedNoResp,
        },
        {
            $Type : 'UI.DataField',
            Value : hfiReleasedPlantNoResp,
        },
        {
            $Type : 'UI.DataField',
            Value : mrpGroup,
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

