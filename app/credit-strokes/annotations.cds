using ProductionFactsService as service from '../../srv/service';
annotate service.MESStrokes with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Value : center,
            Label : '{@i18n>Centro}'
            },
            {
            $Type : 'UI.DataField',
            Value : productionDate,
            Label : '{@i18n>Data_de_Producao}'
            },
            {
            $Type : 'UI.DataField',
            Value : mrpController,
            Label : '{@i18n>MRP_Controller}'
            },
            {
            $Type : 'UI.DataField',
            Value : strokesQuantity,
            Label : '{@i18n>Quantidade_de_Strokes}'
            },
            {
            $Type : 'UI.DataField',
            Value : outsPerStroke,
            Label : '{@i18n>Saidas_por_Strokes}'
            },
            {
            $Type : 'UI.DataField',
            Value : cupsQuantity,
            Label : '{@i18n>Quantidade_de_Cups}'
            },
            {
            $Type : 'UI.DataField',
            Value : changeReason_description,
            Label : '{@i18n>Motivo_da_Mudanca}'
            },
            {
            $Type : 'UI.DataField',
            Value : lastChangeDate,
            Label : '{@i18n>Data_da_Ultima_Mudanca}'
            },
            {
            $Type : 'UI.DataField',
            Value : lastChangeTime,
            Label : '{@i18n>Hora_da_Ultima_Mudanca}'
            },
            {
            $Type : 'UI.DataField',
            Value : lastChangeBy,
            Label : '{@i18n>Alterado_Por}'
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.SelectionFields : [
        center,
        productionDate,
        mrpController,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : center,
            Label : '{@i18n>Centro}'
        },
        {
            $Type : 'UI.DataField',
            Value : productionDate,
            Label : '{@i18n>Data_de_Producao}'
        },
        {
            $Type : 'UI.DataField',
            Value : mrpController,
            Label : '{@i18n>MRP_Controller}'
        },
        {
            $Type : 'UI.DataField',
            Value : strokesQuantity,
            Label : '{@i18n>Quantidade_de_Strokes}'
        },
        {
            $Type : 'UI.DataField',
            Value : outsPerStroke,
            Label : '{@i18n>Saidas_por_Strokes}'
        },
        {
            $Type : 'UI.DataField',
            Value : cupsQuantity,
            Label : '{@i18n>Quantidade_de_Cups}'
        },
        {
            $Type : 'UI.DataField',
            Value : changeReason_description,
            Label : '{@i18n>Motivo_da_Mudanca}'
        },
        {
            $Type : 'UI.DataField',
            Value : lastChangeBy,
            Label : '{@i18n>Alterado_Por}'
        },
        {
            $Type : 'UI.DataField',
            Value : lastChangeDate,
            Label : '{@i18n>Data_da_Ultima_Mudanca}'
        },
        {
            $Type : 'UI.DataField',
            Value : lastChangeTime,
            Label : '{@i18n>Hora_da_Ultima_Mudanca}'
        }
    ],
    UI.PresentationVariant       : {
        SortOrder     : [{
            Property  : productionDate,
            Descending: true,
        }, 
        {
            Property  : center,
            Descending: false,
        },
        {
            Property  : mrpController,
            Descending: false,
        }
        ],
        Visualizations: ['@UI.LineItem']
    }

);

annotate service.MRPPlanner with {
    mrpPlanner @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextLast,
    }
};
annotate service.MESStrokes with {
    mrpController @Common.Text : _mrpController.description
};
