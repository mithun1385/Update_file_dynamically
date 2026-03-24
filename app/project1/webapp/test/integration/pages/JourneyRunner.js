sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/MoviesList",
	"project1/test/integration/pages/MoviesObjectPage"
], function (JourneyRunner, MoviesList, MoviesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheMoviesList: MoviesList,
			onTheMoviesObjectPage: MoviesObjectPage
        },
        async: true
    });

    return runner;
});

