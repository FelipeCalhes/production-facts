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
        _plant: association [1..1] to sh.Plant on _plant.plant = $self.center,
        _mrpController: association [1..1] to sh.MRPPlanner on _mrpController.mrpPlanner = $self.mrpController,
        _changeReason: association [1..1] to db.changeReasons on _changeReason.id = $self.changeReason
    } 
    entity Plant      as projection on sh.Plant;
    entity MRPPlanner as projection on sh.MRPPlanner;

    entity ChangeReasons as select from db.changeReasons;


    entity MESInterface as projection on db.MESInterfaces;

    entity MESInterfaces as select from  MESInterface {
        key mesReason,
        sapReason,
        factResp,
        creditoOuDebito
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
