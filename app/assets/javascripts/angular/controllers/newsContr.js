var rotaryApp = angular.module('rotaryApp');

rotaryApp.controller('newsContr', ['$scope', '$http', 'getNews', function($scope, $http, getNews){

    //debugger;
    var loadNews = function(){
        //debugger;

        $scope.news = getNews.query();
        window.news = getNews.query();
    };

    loadNews()

}]);