rotaryApp.controller('newsItemContr', function($scope, $http, $routeParams){

    $http.get('/news_items.json').success(function(responce){
        $scope.news = responce.news;
        $scope.itemNews = $routeParams.newsId;
        window.news = responce.news;
        window.itemNews = responce.itemNews;
    });

});