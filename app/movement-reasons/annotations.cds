using ProductionFactsService as service from '../../srv/service';
annotate service.MovementReasons with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : mesReason,
            },
            {
                $Type : 'UI.DataField',
                Value : sapReason,
            },
            {
                $Type : 'UI.DataField',
                Value : factResp,
            },
            {
                $Type : 'UI.DataField',
                Value : creditoOuDebito,
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
            Value : mesReason,
        },
        {
            $Type : 'UI.DataField',
            Value : sapReason,
        },
        {
            $Type : 'UI.DataField',
            Value : factResp,
        },
        {
            $Type : 'UI.DataField',
            Value : creditoOuDebito,
        },
    ],
);
