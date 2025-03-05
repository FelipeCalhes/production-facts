sap.ui.define(["sap/m/MessageToast", 
	"sap/ui/core/message/Message", 
	"sap/ui/core/Messaging",
], function (MessageToast, Message, Messaging, PDFViewer, CodeEditor) {
	"use strict";

	return { 
        onReasons: function (oContext, aSelectedContexts) {
            this.intentBasedNavigation.navigateOutbound("reasons-navigation")
        }
    }
}
)