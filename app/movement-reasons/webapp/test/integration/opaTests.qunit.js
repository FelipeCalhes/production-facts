sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'movementreasons/test/integration/FirstJourney',
		'movementreasons/test/integration/pages/MESInterfacesList',
		'movementreasons/test/integration/pages/MESInterfacesObjectPage'
    ],
    function(JourneyRunner, opaJourney, MESInterfacesList, MESInterfacesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('movementreasons') + '/index.html'
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