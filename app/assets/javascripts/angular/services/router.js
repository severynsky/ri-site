'use strict';

rotaryApp.config(['$routeProvider',
    function($routeProvider){
        $routeProvider.
            when('/', {
                templateUrl: "assets/templates/home.html",
                controller: 'homeContr'
            }).
            when('/news_items', {
                templateUrl: "assets/templates/news_items.html",
                controller: 'newsListContr'
            }).
            when('/news_items/:newsId', {
                templateUrl: "assets/templates/newspage.html",
                controller: 'newsPageContr'
            }).
            otherwise({
                redirectTo: '#/'
            });
    }
]);

