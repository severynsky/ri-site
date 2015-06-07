'use strict';

rotaryApp.config(['$routeProvider',
    function($routeProvider){
        $routeProvider.
            when('/', {
                templateUrl: "assets/templates/home.html",
                controller: 'testContr'
            }).
            when('/news', {
                templateUrl: "assets/templates/news.html",
                controller: 'newsContr'
            }).
            when('/news/:newsId', {
                templateUrl: "assets/templates/newspage.html",
                controller: 'newsItemContr'
            }).
            otherwise({
                redirectTo: '#/'
            });
    }
]);

