rotaryApp.controller('newsPageContr',['$scope', '$http', '$routeParams', '$sce', 'getNews', function($scope, $http, $routeParams, $sce, getNews){

    newsItem = getNews.get({id: $routeParams.newsId}, function(){
        $scope.print = {
            title: newsItem.title,
            intro: newsItem.intro,
            body: newsItem.body,
            date: newsItem.created_at,
            category: newsItem.category,
            image: newsItem.image
        };
        $scope.deliberatelyTrustDangerousSnippet = function(){
            return $sce.trustAsHtml($scope.print.body);
        };
    });

}]);