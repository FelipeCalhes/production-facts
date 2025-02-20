sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'changereasons/test/integration/FirstJourney',
		'changereasons/test/integration/pages/ChangeReasonsList',
		'changereasons/test/integration/pages/ChangeReasonsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ChangeReasonsList, ChangeReasonsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('changereasons') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheChangeReasonsList: ChangeReasonsList,
					onTheChangeReasonsObjectPage: ChangeReasonsObjectPage
                }
            },
            opaJourney.run
        );
    }
);