'use strict';

rotaryApp.config(['$routeProvider',
    function($routeProvider){
        $routeProvider.
            when('/', {
                templateUrl: "assets/templates/home.html",
                controller: 'testContr'
            }).
            when('/news_items', {
                templateUrl: "assets/templates/news_items.html",
                controller: 'newsItemContr'
            }).
            when('/news_items/:newsId', {
                templateUrl: "assets/templates/newspage.html",
                controller: 'newsItemContr'
            }).
            otherwise({
                redirectTo: '#/'
            });
    }
]);

