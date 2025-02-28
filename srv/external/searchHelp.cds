/* checksum : 286717bc90da0dd8e69c4720e204580e */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service searchHelp {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity searchHelp.Plant {
  @sap.unicode : 'false'
  key plant : String(4) not null;
  @sap.unicode : 'false'
  plantName : String(25);
  @sap.unicode : 'false'
  companyCode : String(4);
  @sap.unicode : 'false'
  customerNoOfPlant : String(10);
  @sap.unicode : 'false'
  supplierNoOfPlant : String(10);
  @sap.unicode : 'false'
  address : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
entity searchHelp.NetProductionSet {
  @sap.unicode : 'false'
  @sap.label : 'Material Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Mblnr : String(10) not null;
  @sap.unicode : 'false'
  @sap.label : 'Material Document Year'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Mjahr : String(4) not null;
  @sap.unicode : 'false'
  @sap.label : 'Item in Material Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Zeile : String(4) not null;
  @odata.Type : 'Edm.DateTime'
  @sap.unicode : 'false'
  @sap.label : 'Creation Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  cpudt : DateTime;
  @sap.unicode : 'false'
  @sap.label : 'Plant'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Werks : String(4);
  @sap.unicode : 'false'
  @sap.label : 'MRP Controller'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Dispo : String(3);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Posting Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Budat : Timestamp;
  @sap.unicode : 'false'
  @sap.label : 'Work center'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Arbpl : String(8);
  @sap.unicode : 'false'
  @sap.label : 'Material'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Matnr : String(18);
  @sap.unicode : 'false'
  @sap.label : 'GOAL'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Goal : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'TENDE'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Tende : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'SPOIL'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Spoil : Decimal(9, 2);
  @sap.unicode : 'false'
  @sap.label : 'HFIGE'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Hfige : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'FGOOD'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Fgood : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'AVERA'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Avera : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'TOTPR'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Totpr : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'PRCUP'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Prcup : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'PCHFI'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Pchfi : Decimal(9, 2);
  @sap.unicode : 'false'
  @sap.label : 'HRLPL'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Hrlpl : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'HRLOP'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Hrlop : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'SPNRP'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Spnrp : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'SCPLR'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Scplr : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'SCOPL'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Scopl : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'TOTRE'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Totre : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'EORGE'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Eorge : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'EORRL'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Eorrl : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'EORHI'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Eorhi : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'EORBL'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Eorbl : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'RESP_PLAN'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RespPlan : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'INVENT'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Invent : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'BENDPR'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Bendpr : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'BENDSC'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Bendsc : Decimal(13, 3);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'ZPM_GRAVD'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ZpmGravd : Timestamp;
  @sap.unicode : 'false'
  @sap.label : 'ZPM_GRAVH'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ZpmGravh : Time;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'ZPM_MODFD'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ZpmModfd : Timestamp;
  @sap.unicode : 'false'
  @sap.label : 'ZPM_MODFH'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ZpmModfh : Time;
  @sap.unicode : 'false'
  @sap.label : 'TEXTO'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Texto : String(2);
  @sap.unicode : 'false'
  @sap.label : 'HFIGE_NO'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  HfigeNo : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'HFI Rel. Plant No'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  HrlplNo : Decimal(13, 3);
  @sap.unicode : 'false'
  @sap.label : 'MRP group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Disgr : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity searchHelp.MRPPlanner {
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key plant : String(4) not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key mrpPlanner : String(3) not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  description : String(18) not null;
};

