sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'movementreasons/movementreasons/test/integration/FirstJourney',
		'movementreasons/movementreasons/test/integration/pages/MovementReasonsList',
		'movementreasons/movementreasons/test/integration/pages/MovementReasonsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MovementReasonsList, MovementReasonsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('movementreasons/movementreasons') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMovementReasonsList: MovementReasonsList,
					onTheMovementReasonsObjectPage: MovementReasonsObjectPage
                }
            },
            opaJourney.run
        );
    }
);