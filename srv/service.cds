using {production.facts as db} from '../db/schema.cds';
using {searchHelp as sh} from './external/searchHelp';

service ProductionFactsService {

    //Credit-Strokes
    entity MESStroke as projection on db.MESStrokes;

    entity MESStrokes as select from  MESStroke {
        key center,
        key productionDate,
        key mrpController,
        strokesQuantity,
        outsPerStroke,
        cupsQuantity,
        changeReason,
        lastChangeDate,
        lastChangeTime,
        lastChangeBy,
        _mrpController: association [1..1] to sh.MRPPlanner on _mrpController.mrpPlanner = $self.mrpController
    }

    entity MESStrokes_insert {
        key center                 : String(4);
        key productionDate          : Date;
        key mrpController           : String(3);
        strokesQuantity             : Integer;
        outsPerStroke               : Integer;
        cupsQuantity                : Integer;
        
    }



    entity Plant      as projection on sh.Plant;
    entity MRPPlanner as projection on sh.MRPPlanner;
    entity MovReason as projection on sh.MovReason;

    entity ChangeReasons as select from db.changeReasons;

    entity MESInterfaces as select from  db.MESInterfaces {
        key sapReason,
        factResp,
        lastChangeBy,
        lastChangeDate,
        lastChangeTime,
        _movReasons: association [1..1] to sh.MovReason on (_movReasons.MovementReason = $self.sapReason and _movReasons.MovType = '344')
    }

    //Movement-Reasons
    entity MovementReason as projection on db.MovementReasons;

    entity MovementReasons as select from  MovementReason {
        key mesReason,
        sapReason,
        factResp,
        creditoOuDebito
    }

    //Net-Production
    entity NetProduction as projection on db.NetProductions;

    entity NetProductions as select from NetProduction {
        //key mandante,
        key centro,
        key planejadorMrp,
        dataLancamento,
        key centroTrabalho,
        key numeroMaterial,
        goal,
        tendency,
        spoilage,
        hfiGenerated,
        finishedGood,
        average,
        totalProduction,
        productionCupMinster,
        hfiGeneratedPercentage,
        hfiReleasedPlant,
        hfiReleasedOtherPlant,
        scrapPlantNoRespons,
        scrapPlantRespons,
        scrapOtherPlant,
        totalReleased,
        eorGeneration,
        eorReleased,
        eorHfiGeneration,
        eorBalance,
        plantResponsibilityReport,
        inventory,
        shellEndsProduction,
        shellEndsScrap,
        insertionDate,
        insertionTime,
        modificationDate,
        modificationTime,
        text,
        hfiGeneratedNoResp,
        hfiReleasedPlantNoResp,
        mrpGroup
    }

        // entity NetProductions as select from  NetProduction {
    //     key mandante,
    //     key centro,
    //     key planejadorMrp,
    //     dataLancamento,
    //     key centroTrabalho,
    //     key numeroMaterial,
    //     goal,
    //     tendency,
    //     spoilage,
    //     hfiGenerated,
    //     finishedGood,
    //     average,
    //     totalProduction,
    //     productionCupMinster,
    //     hfiGeneratedPercentage,
    //     hfiReleasedPlant,
    //     hfiReleasedOtherPlant,
    //     scrapPlantNoRespons,
    //     scrapPlantRespons,
    //     scrapOtherPlant,
    //     totalReleased
    // }
}
