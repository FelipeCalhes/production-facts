using ProductionFactsService as service from '../../srv/service';
annotate service.NetProductions with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
