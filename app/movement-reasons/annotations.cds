using ProductionFactsService as service from '../../srv/service';
annotate service.MESInterfaces with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : sapReason,
            },
            {
                $Type : 'UI.DataField',
                Value : factResp,
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
            Value : sapReason,
        },
        {
            $Type : 'UI.DataField',
            Value : factResp,
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
        },
    ],
);

