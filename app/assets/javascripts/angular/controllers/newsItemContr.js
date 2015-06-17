rotaryApp.controller('newsItemContr',['$scope', '$http', '$routeParams', 'getNews', function($scope, $http, $routeParams, getNews){

    //$http.get('/news_items.json').success(function(responce){
    //    debugger;
    //    $scope.news = responce.news;
    //    $scope.itemNews = $routeParams.newsId;
    //    window.news = responce.news;
    //    window.itemNews = responce.itemNews;
    //});

    newsItem = getNews.get({id: $routeParams.newsId}, function(){
        $scope.print = {
            title: newsItem.title,
            body: newsItem.body,
            category: newsItem.category,
            image: newsItem.image
        };
    });

}]);