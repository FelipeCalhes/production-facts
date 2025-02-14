sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mesinterface/mesinterface/test/integration/FirstJourney',
		'mesinterface/mesinterface/test/integration/pages/MESInterfacesList',
		'mesinterface/mesinterface/test/integration/pages/MESInterfacesObjectPage'
    ],
    function(JourneyRunner, opaJourney, MESInterfacesList, MESInterfacesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mesinterface/mesinterface') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMESInterfacesList: MESInterfacesList,
					onTheMESInterfacesObjectPage: MESInterfacesObjectPage
                }
            },
            opaJourney.run
        );
    }
);