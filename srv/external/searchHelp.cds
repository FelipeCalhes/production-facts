/* checksum : f9ff82311a3989cd0a738fdd56d7ad2f */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service searchHelp {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity searchHelp.Plant {
  @sap.unicode : 'false'
  @title : 'Centro'
  key plant : String(4) not null;
  @sap.unicode : 'false'
  @title : 'Nome da Planta'
  plantName : String(25);
  @sap.unicode : 'false'
  @title : 'Código da Empresa'
  companyCode : String(4);
  @sap.unicode : 'false'
  @title : 'Número do Cliente da Planta'
  customerNoOfPlant : String(10);
  @sap.unicode : 'false'
  @title : 'Número do Fornecedor da Planta'
  supplierNoOfPlant : String(10);
  @sap.unicode : 'false'
  @title : 'Endereço'
  address : String(10);
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
  @title : 'Centro'
  key plant : String(4) not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @title : 'Planejador MRP'
  key mrpPlanner : String(3) not null;
  @sap.unicode : 'false'
  @title : 'Descrição'
  description : String(18) not null;
};

