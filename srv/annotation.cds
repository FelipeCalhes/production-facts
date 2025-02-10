using {ProductionFactsService as srv} from './service';


annotate srv.MESStrokes with @odata.draft.enabled {
    @title: 'Centro'
    @Common.ValueList: {
        CollectionPath: 'Plant',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'center',
                ValueListProperty: 'plant',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'plantName'
            }
        ]
    }
    center;

    @Common.ValueList: {
        CollectionPath: 'MRPPlanner',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'center',
                ValueListProperty: 'plant',
            },
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'mrpController',
                ValueListProperty: 'mrpPlanner',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description'
            }
        ]
    }
    @title: 'MRP Controller'
    @Common.Label: 'MRP Controller'
    mrpController;
    @title: 'Data de Produção'
    productionDate;

    @title: 'Quantidade de Strokes'
    strokesQuantity;

    @title: 'Saídas por Strokes'
    outsPerStroke;

    @title: 'Quantidade de Cups'
    cupsQuantity;

    @Common.ValueList: {
        CollectionPath: 'ChangeReasons',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'changeReason',
                ValueListProperty: 'id',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description'
            }
        ]
    }
    @title: 'Motivo da Mudança'
    changeReason;

    @title: 'Data da Última Mudança'
    @readonly
    lastChangeDate;

    @title: 'Hora da Última Mudança'
    @readonly
    lastChangeTime;

    @title: 'Alterado Por'
    @readonly
    lastChangeBy;

}

annotate srv.MESStrokes with @odata.draft.bypass;
