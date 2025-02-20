using { searchHelp as sh } from '../srv/external/searchHelp';


namespace production.facts;

entity MESStrokes {
    key center                  : String(4);
    key productionDate          : Date;
    key mrpController           : String(3);
    strokesQuantity             : Integer;
    outsPerStroke               : Integer;
    cupsQuantity                : Integer;
    changeReason                : Association to one changeReasons;
    lastChangeDate              : Date;
    lastChangeTime              : Time;
    lastChangeBy                : String(250);
}

entity changeReasons {
    //key id      : String(1);
    key description : String(40);
}

entity MESInterfaces {
    key mesReason   : String(5);
    sapReason       : String(10);
    factResp        : Boolean;
    creditoOuDebito : String enum {
                                H = 'Crédito';
                                S = 'Débito';
                            };
}

entity MovementReasons {
    key mesReason   : String(5);
    sapReason       : String(10);
    factResp        : Boolean;
    creditoOuDebito : String enum {
                                H = 'credito';
                                S = 'debito';
                            };
}


entity NetProductions {
    //key mandante                  : String(3);      // Mandante
    key centro                    : String(4);      // Centro
    key planejadorMrp             : String(3);      // Planejador MRP
    dataLancamento                : Date;           // Data de lançamento no documento
    key centroTrabalho            : String(8);      // Centro de trabalho
    key numeroMaterial            : String(18);     // Nº do material
    goal                          : Decimal(13,3);  // Goal
    tendency                      : Decimal(13,3);  // Tendency
    spoilage                      : Decimal(9,2);   // Spoilage
    hfiGenerated                  : Decimal(13,3);  // HFI Generated
    finishedGood                  : Decimal(13,3);  // Finished Good
    average                       : Decimal(13,3);  // Average
    totalProduction               : Decimal(13,3);  // Total Production
    productionCupMinster          : Decimal(13,3);  // Production Cup Minster
    hfiGeneratedPercentage        : Decimal(9,2);   // HFI Generated (%)
    hfiReleasedPlant              : Decimal(13,3);  // HFI Released Plant
    hfiReleasedOtherPlant         : Decimal(13,3);  // HFI Released Other Plant
    scrapPlantNoRespons           : Decimal(13,3);  // Scrap Plant No Respons
    scrapPlantRespons             : Decimal(13,3);  // Scrap Plant Respons
    scrapOtherPlant               : Decimal(13,3);  // Scrap Other Plant
    totalReleased                 : Decimal(13,3);  // Total Released
    eorGeneration                 : Decimal(13,3);  // EOR Generation
    eorReleased                   : Decimal(13,3);  // EOR Released
    eorHfiGeneration              : Decimal(13,3);  // EOR HFI Generation
    eorBalance                    : Decimal(13,3);  // EOR Balance
    plantResponsibilityReport     : Decimal(13,3);  // Total do Relatório de Responsabilidade da Planta
    inventory                     : Decimal(13,3);  // Inventário
    shellEndsProduction           : Decimal(13,3);  // Shell Ends Production
    shellEndsScrap                : Decimal(13,3);  // Shell Ends Scrap
    insertionDate                 : Date;           // Data de Inserção
    insertionTime                 : Time;           // Hora de Inserção
    modificationDate              : Date;           // Data de Modificação
    modificationTime              : Time;           // Hora de Modificação
    text                          : String(2);      // Texto
    hfiGeneratedNoResp            : Decimal(13,3);  // HFI Generated No Resp
    hfiReleasedPlantNoResp        : Decimal(13,3);  // HFI Released Plant No Resp
    mrpGroup                      : String(4);      // Grupo MRP
} 