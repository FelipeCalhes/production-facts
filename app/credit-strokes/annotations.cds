using ProductionFactsService as service from '../../srv/service';
annotate service.MESStrokes with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Value : center,
            },
            {
            $Type : 'UI.DataField',
            Value : productionDate,
            },
            {
            $Type : 'UI.DataField',
            Value : mrpController,
            },
            {
            $Type : 'UI.DataField',
            Value : strokesQuantity,
            },
            {
            $Type : 'UI.DataField',
            Value : outsPerStroke,
            },
            {
            $Type : 'UI.DataField',
            Value : cupsQuantity,
            },
            {
            $Type : 'UI.DataField',
            Value : changeReason_description,
            },
            {
            $Type : 'UI.DataField',
            Value : lastChangeDate,
            },
            {
            $Type : 'UI.DataField',
            Value : lastChangeTime,
            },
            {
            $Type : 'UI.DataField',
            Value : lastChangeBy,
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
        },
        {
            $Type : 'UI.DataField',
            Value : productionDate,
        },
        {
            $Type : 'UI.DataField',
            Value : mrpController,
        },
        {
            $Type : 'UI.DataField',
            Value : strokesQuantity,
        },
        {
            $Type : 'UI.DataField',
            Value : outsPerStroke,
        },
        {
            $Type : 'UI.DataField',
            Value : cupsQuantity,
        },

        {
            $Type : 'UI.DataField',
            Value : changeReason_description,
        },

        {
            $Type : 'UI.DataField',
            Value : lastChangeBy,
        },
        {
            $Type : 'UI.DataField',
            Value : lastChangeDate,
        },
        {
            $Type : 'UI.DataField',
            Value : lastChangeTime,
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

// annotate service.MESStrokes with {
//     mrpController @(
//         Common.ValueListWithFixedValues : false,
//         Common.Text : {
//             $value : _mrpController.description,
//             ![@UI.TextArrangement] : #TextLast,
//         },
//     )
// };

annotate service.MRPPlanner with {
    mrpPlanner @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextLast,
    }
};
annotate service.MESStrokes with {
    mrpController @Common.Text : _mrpController.description
};

