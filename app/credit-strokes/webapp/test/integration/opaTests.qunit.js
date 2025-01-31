sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'creditstrokes/test/integration/FirstJourney',
		'creditstrokes/test/integration/pages/MESStrokesList',
		'creditstrokes/test/integration/pages/MESStrokesObjectPage'
    ],
    function(JourneyRunner, opaJourney, MESStrokesList, MESStrokesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('creditstrokes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMESStrokesList: MESStrokesList,
					onTheMESStrokesObjectPage: MESStrokesObjectPage
                }
            },
            opaJourney.run
        );
    }
);