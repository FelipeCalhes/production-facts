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
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            //Label : '{@i18n>General_Information}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.SelectionFields : [
        sapReason,
        factResp,
        lastChangeBy,
        lastChangeDate,
        lastChangeTime,
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
    UI.HeaderInfo : {
        TypeName : 'Plant Responsibility Defects',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : 'Plant Responsibility Defects',
        },
    },

);
annotate service.MovReason with {
    MovementReason @Common.Text : {
        $value : ReasonDescription,
        ![@UI.TextArrangement] : #TextLast,
    }
};
annotate service.MESInterfaces with {
    sapReason @Common.Text : _movReasons.ReasonDescription
};

