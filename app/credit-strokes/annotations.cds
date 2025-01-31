using ProductionFactsService as service from '../../srv/service';
annotate service.MESStrokes with @(
    

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label : 'Centro',
            Value : center,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Data de Produção',
            Value : productionDate,
            },
            {
            $Type : 'UI.DataField',
            Label : 'MRP Controller',
            Value : mrpController,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Quantidade de Strokes',
            Value : strokesQuantity,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Saídas por Strokes',
            Value : outsPerStroke,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Quantidade de Cups',
            Value : cupsQuantity,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Motivo da Mudança',
            Value : changeReason,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Data da Última Mudança',
            Value : lastChangeDate,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Hora da Última Mudança',
            Value : lastChangeTime,
            },
            {
            $Type : 'UI.DataField',
            Label : 'Alterado Por',
            Value : lastChangeBy,
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
    UI.SelectionFields : [
        center,
        productionDate,
        mrpController,
        strokesQuantity,
        outsPerStroke,
        cupsQuantity,
        changeReason,
        lastChangeDate,
        lastChangeTime,
        lastChangeBy,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : mrpController,
        },
        {
            $Type : 'UI.DataField',
            Value : productionDate,
        },
        {
            $Type : 'UI.DataField',
            Value : center,
        },
        {
            $Type : 'UI.DataField',
            Value : strokesQuantity,
        },
        {
            $Type : 'UI.DataField',
            Value : outsPerStroke,
        },
    ],
);

annotate service.MESStrokes with {
    mrpController @(
        Common.ValueListWithFixedValues : false,
        Common.Text : {
            $value : _mrpController.description,
            ![@UI.TextArrangement] : #TextLast,
        },
    )
};

annotate service.MRPPlanner with {
    mrpPlanner @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextLast,
    }
};

annotate service.MESStrokes with {
    center @Common.Text : {
        $value : _plant.plantName,
        ![@UI.TextArrangement] : #TextLast
    }
};

annotate service.MESStrokes with {
    changeReason @Common.Text : {
        $value : _changeReason.description,
        ![@UI.TextArrangement] : #TextOnly
    }
};

