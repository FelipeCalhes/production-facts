//@ui5-bundle movementreasons/Component-preload.js
sap.ui.require.preload({
	"movementreasons/Component.js":function(){
sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("movementreasons.Component",{metadata:{manifest:"json"}})});
},
	"movementreasons/i18n/i18n.properties":'# This is the resource bundle for movementreasons\n\n#Texts for manifest.json\n\n#XTIT: Nome do aplicativo\nappTitle=SAP Moviment Reason x Plant Responsibility\n\n#YDES: Descri\\u00e7\\u00e3o do aplicativo\nappDescription=Production KPIs.\n\nCentro=Centro\nMRP_Controller=Planej. MRP\nData_de_Producao=Data de Produ\\u00e7\\u00e3o\nQuantidade_de_Strokes=Qtd Strokes\nSaidas_por_Strokes=Outs por Strokes\nQuantidade_de_Cups=Qtd Copos\nMotivo_da_Mudanca=Motivo da Altera\\u00e7\\u00e3o\nData_da_Ultima_Mudanca=\\u00daltima Altera\\u00e7\\u00e3o em \nHora_da_Ultima_Mudanca=\\u00daltima Altera\\u00e7\\u00e3o \\u00e0s\nAlterado_Por=\\u00daltima Altera\\u00e7\\u00e3o por\nMes_Reason=Raz\\u00e3o Mes\nSap_Reason=Raz\\u00e3o Sap\nFact_Resp=Resp Fato\nH_S=H/S\nPlant=Planta\nMRP_Planner=Planejador MRP\nRelease_Date=Data de Lan\\u00e7amento\nWork_Center=Centro de Trabalho\nMaterial_Number=N\\u00famero do Material\nGoal=Meta\nTendency=Tend\\u00eancia\nSpoilage=Desperd\\u00edcio\nHFI_Generated=HFI Gerado\nFinished_Good=Produto Acabado\nAverage=M\\u00e9dia\nTotal_Production=Produ\\u00e7\\u00e3o Total\nProduction_Cup_Minster=Produ\\u00e7\\u00e3o de Copos Minster\nHFI_Generated_Percentage=HFI Gerado (%)\nHFI_Released_Plant=HFI Liberado Planta\nHFI_Released_Other_Plant=HFI Liberado Outra Planta\nScrap_Plant_No_Respons=Refugo Planta Sem Responsabilidade\nScrap_Plant_Respons=Refugo Planta Com Responsabilidade\nScrap_Other_Plant=Refugo Outra Planta\nTotal_Released=Total Liberado\nEOR_Generation=Gera\\u00e7\\u00e3o EOR\nEOR_Released=EOR Liberado\nEOR_HFI_Generation=Gera\\u00e7\\u00e3o HFI EOR\nEOR_Balance=Balan\\u00e7o EOR\nPlant_Responsibility_Report=Relat\\u00f3rio de Responsabilidade da Planta\nInventory=Invent\\u00e1rio\nShell_Ends_Production=Produ\\u00e7\\u00e3o de Tampas\nShell_Ends_Scrap=Refugo de Tampas\nInsertion_Date=Data de Inser\\u00e7\\u00e3o\nInsertion_Time=Hora de Inser\\u00e7\\u00e3o\nModification_Date=Data de Modifica\\u00e7\\u00e3o\nModification_Time=Hora de Modifica\\u00e7\\u00e3o\nText=Texto\nHFI_Generated_No_Resp=HFI Gerado Sem Responsabilidade\nHFI_Released_Plant_No_Resp=HFI Liberado Planta Sem Responsabilidade\nMRP_Group=Grupo MRP\nChange_id=ID\nChange_description=Motivo altera\\u00e7\\u00e3o',
	"movementreasons/manifest.json":'{"_version":"1.59.0","sap.app":{"id":"movementreasons","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"Movement Reason x Plant Responsibility","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.14.4","toolsId":"e11df7f9-54e5-4af0-a85b-6fadf96cbe6a"},"dataSources":{"mainService":{"uri":"odata/v4/production-facts/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"Mov-reason-maintain":{"semanticObject":"movementreasons","action":"maintain","title":"SAP Moviment Reason x Plant Responsibility (Production KPIs)","signature":{"parameters":{},"additionalParameters":"allowed"}}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.133.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"movementreasons.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"MESInterfacesList","target":"MESInterfacesList"},{"pattern":"MESInterfaces({key}):?query:","name":"MESInterfacesObjectPage","target":"MESInterfacesObjectPage"}],"targets":{"MESInterfacesList":{"type":"Component","id":"MESInterfacesList","name":"sap.fe.templates.ListReport","options":{"settings":{"initialLoad":"Enabled","contextPath":"/MESInterfaces","variantManagement":"Page","navigation":{"MESInterfaces":{"detail":{"route":"MESInterfacesObjectPage"}}},"controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"type":"GridTable"}}}}}},"MESInterfacesObjectPage":{"type":"Component","id":"MESInterfacesObjectPage","name":"sap.fe.templates.ObjectPage","title":"SAP Moviment Reason x Plant Responsibility (Production KPIs)","options":{"settings":{"editableHeaderContent":false,"contextPath":"/MESInterfaces"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"production.facts"}}'
});
//# sourceMappingURL=Component-preload.js.map
