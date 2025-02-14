using ProductionFactsService as service from '../../srv/service';
annotate service.MESInterfaces with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'MES Reason',
                Value : mesReason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SAP Reason',
                Value : sapReason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Fact. Resp.',
                Value : factResp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'H/S',
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
     UI.SelectionFields : [
        creditoOuDebito
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

