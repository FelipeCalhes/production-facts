using ProductionFactsService as service from '../../srv/service';
annotate service.MovementReasons with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : mesReason,
                Label : '{@i18n>Mes_Reason}',
            },
            {
                $Type : 'UI.DataField',
                Value : sapReason,
                Label : '{@i18n>Sap_Reason}',
            },
            {
                $Type : 'UI.DataField',
                Value : factResp,
                Label : '{@i18n>Fact_Resp}',
            },
            {
                $Type : 'UI.DataField',
                Value : creditoOuDebito,
                Label : '{@i18n>H_S}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{@i18n>General_Information}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : mesReason,
            Label : '{@i18n>Mes_Reason}',
        },
        {
            $Type : 'UI.DataField',
            Value : sapReason,
            Label : '{@i18n>Sap_Reason}',
        },
        {
            $Type : 'UI.DataField',
            Value : factResp,
            Label : '{@i18n>Fact_Resp}',
        },
        {
            $Type : 'UI.DataField',
            Value : creditoOuDebito,
            Label : '{@i18n>H_S}',
        },
    ],
);
