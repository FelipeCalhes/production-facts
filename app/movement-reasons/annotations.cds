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
            //Label : '{@i18n>General_Information}',
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
            Value : creditoOuDebito,
            Label : '{@i18n>H_S}',
        },
    ],
    UI.HeaderInfo : {
        TypeName : 'Plant Responsibility Defects',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : mesReason,
        },
    },

);

