var rotaryApp = angular.module('rotaryApp');

rotaryApp.controller('newsListContr', ['$scope', '$http', '$sce', '$filter', 'getNews', function($scope, $http, $sce, $filter, getNews){

    var loadNews = function(){
        $scope.news = getNews.query();
        $scope.news.body = $filter('limitTo')($scope.news.body, 230);
    };

    loadNews();

    $scope.deliberatelyTrustDangerousSnippet = function(){
        return $sce.trustAsHtml($scope.news);
    };

}]);