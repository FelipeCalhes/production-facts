sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'netproduction/netproduction/test/integration/FirstJourney',
		'netproduction/netproduction/test/integration/pages/NetProductionsList',
		'netproduction/netproduction/test/integration/pages/NetProductionsObjectPage'
    ],
    function(JourneyRunner, opaJourney, NetProductionsList, NetProductionsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('netproduction/netproduction') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheNetProductionsList: NetProductionsList,
					onTheNetProductionsObjectPage: NetProductionsObjectPage
                }
            },
            opaJourney.run
        );
    }
);