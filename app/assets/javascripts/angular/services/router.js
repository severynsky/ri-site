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
                controller: 'newsController'
            }).
            when('/third', {
                templateUrl: "assets/templates/third.html",
                controller: 'thirdContr'
            }).
            otherwise({
                redirectTo: '#/'
            });
    }
]);

