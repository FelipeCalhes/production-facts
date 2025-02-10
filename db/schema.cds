using { searchHelp as sh } from '../srv/external/searchHelp';


namespace production.facts;

entity MESStrokes {
    key center            : String(4);
    key productionDate        : Date;
    key mrpController         : String(3);
    strokesQuantity       : Integer;
    outsPerStroke         : Integer;
    cupsQuantity          : Integer;
    changeReason : String(40) enum {
        A = 'Cálculo de OUT errado';
        B = 'Cálculo de strokes errado';
        C = 'Dreno de linha';
        D = 'Falha no FTTM (transporte para o SAP)';
        E = 'Falha no PLC da Minster';
        F = 'Reconhecimento de copos novelis';
    };
    lastChangeDate        : Date;
    lastChangeTime        : Time;
    lastChangeBy          : String(250);
}

entity changeReasons {
    key id : String(1);
    description : String(40);
}