'use strict';

rotaryApp.config(['$routeProvider',
    function($routeProvider){
        $routeProvider.
            when('/', {
                templateUrl: "assets/templates/home.html",
                controller: 'testContr'
            }).
            when('/second', {
                templateUrl: "assets/templates/second.html",
                controller: 'counterContr'
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

