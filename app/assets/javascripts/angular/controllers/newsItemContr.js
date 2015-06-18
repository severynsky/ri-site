rotaryApp.controller('newsItemContr',['$scope', '$http', '$routeParams', '$sce', 'getNews', function($scope, $http, $routeParams, $sce, getNews){

    newsItem = getNews.get({id: $routeParams.newsId}, function(){
        $scope.print = {
            title: newsItem.title,
            body: newsItem.body,
            category: newsItem.category,
            image: newsItem.image
        };
        $scope.deliberatelyTrustDangerousSnippet = function(){
            return $sce.trustAsHtml($scope.print.body);
        };
    });

}]);