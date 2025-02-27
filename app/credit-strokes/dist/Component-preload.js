//@ui5-bundle creditstrokes/Component-preload.js
sap.ui.require.preload({
	"creditstrokes/Component.js":function(){
sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("creditstrokes.Component",{metadata:{manifest:"json"}})});
},
	"creditstrokes/ext/controller/CustomActions.js":function(){
sap.ui.define(["sap/m/MessageToast","sap/ui/core/message/Message","sap/ui/core/Messaging"],function(s,a,e,n,i){"use strict";return{onReasons:function(s,a){this.intentBasedNavigation.navigateOutbound("reasons-navigation")}}});
},
	"creditstrokes/i18n/i18n.properties":'# This is the resource bundle for creditstrokes\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Strokes/Cups Management (MES x SAP Interface)\n\n#YDES: Application description\nappDescription=An SAP Fiori application.\n\n#XFLD,45\nflpTitle=Strokes Cr\\u00e9dito\n\n#XFLD,54\n#flpTitle=MES Credit Strokes\nflpTitle=Strokes/Cups Management (MES x SAP Interface)\nreasons=Editar motivos de altera\\u00e7\\u00e3o\n\nCentro=Centro\nMRP_Controller=Planej. MRP\nData_de_Producao=Data de Produ\\u00e7\\u00e3o\nQuantidade_de_Strokes=Qtd Strokes\nSaidas_por_Strokes=Outs por Strokes\nQuantidade_de_Cups=Qtd Copos\nMotivo_da_Mudanca=Motivo da Altera\\u00e7\\u00e3o\nData_da_Ultima_Mudanca=\\u00daltima Altera\\u00e7\\u00e3o em \nHora_da_Ultima_Mudanca=\\u00daltima Altera\\u00e7\\u00e3o \\u00e0s\nAlterado_Por=\\u00daltima Altera\\u00e7\\u00e3o por\nMes_Reason=Raz\\u00e3o Mes\nSap_Reason=Raz\\u00e3o Sap\nFact_Resp=Resp Fato\nH_S=H/S\nPlant=Planta\nMRP_Planner=Planejador MRP\nRelease_Date=Data de Lan\\u00e7amento\nWork_Center=Centro de Trabalho\nMaterial_Number=N\\u00famero do Material\nGoal=Meta\nTendency=Tend\\u00eancia\nSpoilage=Desperd\\u00edcio\nHFI_Generated=HFI Gerado\nFinished_Good=Produto Acabado\nAverage=M\\u00e9dia\nTotal_Production=Produ\\u00e7\\u00e3o Total\nProduction_Cup_Minster=Produ\\u00e7\\u00e3o de Copos Minster\nHFI_Generated_Percentage=HFI Gerado (%)\nHFI_Released_Plant=HFI Liberado Planta\nHFI_Released_Other_Plant=HFI Liberado Outra Planta\nScrap_Plant_No_Respons=Refugo Planta Sem Responsabilidade\nScrap_Plant_Respons=Refugo Planta Com Responsabilidade\nScrap_Other_Plant=Refugo Outra Planta\nTotal_Released=Total Liberado\nEOR_Generation=Gera\\u00e7\\u00e3o EOR\nEOR_Released=EOR Liberado\nEOR_HFI_Generation=Gera\\u00e7\\u00e3o HFI EOR\nEOR_Balance=Balan\\u00e7o EOR\nPlant_Responsibility_Report=Relat\\u00f3rio de Responsabilidade da Planta\nInventory=Invent\\u00e1rio\nShell_Ends_Production=Produ\\u00e7\\u00e3o de Tampas\nShell_Ends_Scrap=Refugo de Tampas\nInsertion_Date=Data de Inser\\u00e7\\u00e3o\nInsertion_Time=Hora de Inser\\u00e7\\u00e3o\nModification_Date=Data de Modifica\\u00e7\\u00e3o\nModification_Time=Hora de Modifica\\u00e7\\u00e3o\nText=Texto\nHFI_Generated_No_Resp=HFI Gerado Sem Responsabilidade\nHFI_Released_Plant_No_Resp=HFI Liberado Planta Sem Responsabilidade\nMRP_Group=Grupo MRP\nChange_id=ID\nChange_description=Motivo altera\\u00e7\\u00e3o',
	"creditstrokes/i18n/i18n_en.properties":'# This is the resource bundle for creditstrokes\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Strokes/Cups Management (MES x SAP Interface)\n\n#YDES: Application description\nappDescription=An SAP Fiori application.\n\n#XFLD,45\nflpTitle=Strokes/Cups Management (MES x SAP Interface)\n\n#XFLD,54\nflpTitle=MES Credit Strokes\nreasons=Change maintenance reasons\n\n\nCentro=Center\nMRP_Controller=MRP Controller\nData_de_Producao=Prod. Date\nQuantidade_de_Strokes=Strokes Quantity\nSaidas_por_Strokes=Outs per Stroke\nQuantidade_de_Cups=Cups Quantity\nMotivo_da_Mudanca=Change Reason\nData_da_Ultima_Mudanca=Last Change on\nHora_da_Ultima_Mudanca=Last Change at\nAlterado_Por=Last Changed By\nMes_Reason=Mes Reason\nSap_Reason=Sap Reason\nFact_Resp=Fact Resp\nH_S=H/S\nPlant=Plant\nMRP_Planner=MRP Planner\nRelease_Date=Release Date\nWork_Center=Work Center\nMaterial_Number=Material Number\nGoal=Goal\nTendency=Tendency\nSpoilage=Spoilage\nHFI_Generated=HFI Generated\nFinished_Good=Finished Good\nAverage=Average\nTotal_Production=Total Production\nProduction_Cup_Minster=Production Cup Minster\nHFI_Generated_Percentage=HFI Generated (%)\nHFI_Released_Plant=HFI Released Plant\nHFI_Released_Other_Plant=HFI Released Other Plant\nScrap_Plant_No_Respons=Scrap Plant No Respons\nScrap_Plant_Respons=Scrap Plant Respons\nScrap_Other_Plant=Scrap Other Plant\nTotal_Released=Total Released\nEOR_Generation=EOR Generation\nEOR_Released=EOR Released\nEOR_HFI_Generation=EOR HFI Generation\nEOR_Balance=EOR Balance\nPlant_Responsibility_Report=Plant Responsibility Report\nInventory=Inventory\nShell_Ends_Production=Shell Ends Production\nShell_Ends_Scrap=Shell Ends Scrap\nInsertion_Date=Insertion Date\nInsertion_Time=Insertion Time\nModification_Date=Modification Date\nModification_Time=Modification Time\nText=Text\nHFI_Generated_No_Resp=HFI Generated No Resp\nHFI_Released_Plant_No_Resp=HFI Released Plant No Resp\nMRP_Group=MRP Group\nChange_id=ID\nChange_description=Change Description',
	"creditstrokes/i18n/i18n_es.properties":'# Este es el paquete de recursos para creditstrokes\n\n# Textos para manifest.json\n\n# XTIT: Nombre de la aplicaci\\u00f3n\nappTitle=Strokes/Cups Management (MES x SAP Interface)\n\n# YDES: Descripci\\u00f3n de la aplicaci\\u00f3n\nappDescription=Una aplicaci\\u00f3n SAP Fiori.\n\n# XFLD,45\nflpTitle=Strokes Credit\n\n# XFLD,54\nflpTitle=Strokes/Cups Management (MES x SAP Interface)\n\nrazones=Editar razones de cambio\n\n\nCentro=Centro\nMRP_Controller=Planif. MRP\nData_de_Producao=Fecha de Producci\\u00f3n\nQuantidade_de_Strokes=Cantidad Strokes\nSaidas_por_Strokes=Outs por Strokes\nQuantidade_de_Cups=Cantidad Copos\nMotivo_da_Mudanca=Motivo modificaci\\u00f3n\nData_da_Ultima_Mudanca=\\u00daltima Modificaci\\u00f3n en\nHora_da_Ultima_Mudanca=\\u00daltima Modificaci\\u00f3n a las\nAlterado_Por=\\u00daltima Modificaci\\u00f3n por\nMes_Reason=Raz\\u00f3n Mes\nSap_Reason=Raz\\u00f3n Sap\nFact_Resp=Resp Fact\nH_S=H/S\nPlant=Planta\nMRP_Planner=Planificador MRP\nRelease_Date=Fecha de Lanzamiento\nWork_Center=Centro de Trabajo\nMaterial_Number=N\\u00famero de Material\nGoal=Meta\nTendency=Tendencia\nSpoilage=Desperdicio\nHFI_Generated=HFI Generado\nFinished_Good=Producto Terminado\nAverage=Promedio\nTotal_Production=Producci\\u00f3n Total\nProduction_Cup_Minster=Producci\\u00f3n Taza Minster\nHFI_Generated_Percentage=HFI Generado (%)\nHFI_Released_Plant=HFI Liberado Planta\nHFI_Released_Other_Plant=HFI Liberado Otra Planta\nScrap_Plant_No_Respons=Desperdicio Planta Sin Responsabilidad\nScrap_Plant_Respons=Desperdicio Planta Con Responsabilidad\nScrap_Other_Plant=Desperdicio Otra Planta\nTotal_Released=Total Liberado\nEOR_Generation=Generaci\\u00f3n EOR\nEOR_Released=EOR Liberado\nEOR_HFI_Generation=Generaci\\u00f3n HFI EOR\nEOR_Balance=Balance EOR\nPlant_Responsibility_Report=Informe de Responsabilidad de la Planta\nInventory=Inventario\nShell_Ends_Production=Producci\\u00f3n de Tapas\nShell_Ends_Scrap=Desperdicio de Tapas\nInsertion_Date=Fecha de Inserci\\u00f3n\nInsertion_Time=Hora de Inserci\\u00f3n\nModification_Date=Fecha de Modificaci\\u00f3n\nModification_Time=Hora de Modificaci\\u00f3n\nText=Texto\nHFI_Generated_No_Resp=HFI Generado Sin Responsabilidad\nHFI_Released_Plant_No_Resp=HFI Liberado Planta Sin Responsabilidad\nMRP_Group=Grupo MRP\nChange_id=ID\nChange_description=Motivo Modificaci\\u00f3n',
	"creditstrokes/i18n/i18n_pt.properties":'# This is the resource bundle for creditstrokes\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Strokes/Cups Management (MES x SAP Interface)\n\n#YDES: Application description\nappDescription=An SAP Fiori application.\n\n#XFLD,45\nflpTitle=Strokes Cr\\u00e9dito\n\n#XFLD,54\n#flpTitle=MES Credit Strokes\nflpTitle=Strokes/Cups Management (MES x SAP Interface)\nreasons=Editar motivos de altera\\u00e7\\u00e3o\n\nCentro=Centro\nMRP_Controller=Planej. MRP\nData_de_Producao=Data de Produ\\u00e7\\u00e3o\nQuantidade_de_Strokes=Qtd Strokes\nSaidas_por_Strokes=Outs por Strokes\nQuantidade_de_Cups=Qtd Copos\nMotivo_da_Mudanca=Motivo da Altera\\u00e7\\u00e3o\nData_da_Ultima_Mudanca=\\u00daltima Altera\\u00e7\\u00e3o em \nHora_da_Ultima_Mudanca=\\u00daltima Altera\\u00e7\\u00e3o \\u00e0s\nAlterado_Por=\\u00daltima Altera\\u00e7\\u00e3o por\nMes_Reason=Raz\\u00e3o Mes\nSap_Reason=Raz\\u00e3o Sap\nFact_Resp=Resp Fato\nH_S=H/S\nPlant=Planta\nMRP_Planner=Planejador MRP\nRelease_Date=Data de Lan\\u00e7amento\nWork_Center=Centro de Trabalho\nMaterial_Number=N\\u00famero do Material\nGoal=Meta\nTendency=Tend\\u00eancia\nSpoilage=Desperd\\u00edcio\nHFI_Generated=HFI Gerado\nFinished_Good=Produto Acabado\nAverage=M\\u00e9dia\nTotal_Production=Produ\\u00e7\\u00e3o Total\nProduction_Cup_Minster=Produ\\u00e7\\u00e3o de Copos Minster\nHFI_Generated_Percentage=HFI Gerado (%)\nHFI_Released_Plant=HFI Liberado Planta\nHFI_Released_Other_Plant=HFI Liberado Outra Planta\nScrap_Plant_No_Respons=Refugo Planta Sem Responsabilidade\nScrap_Plant_Respons=Refugo Planta Com Responsabilidade\nScrap_Other_Plant=Refugo Outra Planta\nTotal_Released=Total Liberado\nEOR_Generation=Gera\\u00e7\\u00e3o EOR\nEOR_Released=EOR Liberado\nEOR_HFI_Generation=Gera\\u00e7\\u00e3o HFI EOR\nEOR_Balance=Balan\\u00e7o EOR\nPlant_Responsibility_Report=Relat\\u00f3rio de Responsabilidade da Planta\nInventory=Invent\\u00e1rio\nShell_Ends_Production=Produ\\u00e7\\u00e3o de Tampas\nShell_Ends_Scrap=Refugo de Tampas\nInsertion_Date=Data de Inser\\u00e7\\u00e3o\nInsertion_Time=Hora de Inser\\u00e7\\u00e3o\nModification_Date=Data de Modifica\\u00e7\\u00e3o\nModification_Time=Hora de Modifica\\u00e7\\u00e3o\nText=Texto\nHFI_Generated_No_Resp=HFI Gerado Sem Responsabilidade\nHFI_Released_Plant_No_Resp=HFI Liberado Planta Sem Responsabilidade\nMRP_Group=Grupo MRP\nChange_id=ID\nChange_description=Motivo altera\\u00e7\\u00e3o',
	"creditstrokes/manifest.json":'{"_version":"1.59.0","sap.app":{"id":"creditstrokes","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.14.4","toolsId":"5e8dca12-dd6a-4996-b341-9e677fa9318b"},"dataSources":{"mainService":{"uri":"odata/v4/production-facts/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}},"crossNavigation":{"outbounds":{"reasons-navigation":{"semanticObject":"changereasons","action":"manage"}},"inbounds":{"mes-strokes-manage":{"semanticObject":"creditstrokes","action":"manage","title":"Strokes/Cups Management (MES x SAP Interface)","signature":{"parameters":{},"additionalParameters":"allowed"}}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.131.1","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"creditstrokes.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"MESStrokesList","target":"MESStrokesList"},{"pattern":"MESStrokes({key}):?query:","name":"MESStrokesObjectPage","target":"MESStrokesObjectPage"}],"targets":{"MESStrokesList":{"type":"Component","id":"MESStrokesList","name":"sap.fe.templates.ListReport","options":{"settings":{"initialLoad":"Enabled","contextPath":"/MESStrokes","variantManagement":"Page","navigation":{"MESStrokes":{"detail":{"route":"MESStrokesObjectPage"}}},"controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"type":"GridTable"},"actions":{"reasons":{"press":"creditstrokes.ext.controller.CustomActions.onReasons","text":"{i18n>reasons}","requiresSelection":false}}}}}}},"MESStrokesObjectPage":{"type":"Component","id":"MESStrokesObjectPage","name":"sap.fe.templates.ObjectPage","title":"Strokes/Cups Management (MES x SAP Interface)","options":{"settings":{"editableHeaderContent":false,"contextPath":"/MESStrokes"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"production.facts"}}'
});
//# sourceMappingURL=Component-preload.js.map
