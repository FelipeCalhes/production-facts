using ProductionFactsService as service from '../../srv/service';
annotate service.ChangeReasons with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : description,
                Label : '{@i18n>Change_description}',
                @title: '{i18n>Change_description}'
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
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : '{@i18n>Change_description}',
        },
    ],

    PresentationVariant       : {
        $Type         : 'UI.PresentationVariantType',
        SortOrder     : [{
            $Type     : 'Common.SortOrderType',
            Property  : description,
            Descending: false,
        }
        ],
        Visualizations: ['@UI.LineItem']
    }
);
