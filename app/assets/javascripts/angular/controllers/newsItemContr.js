rotaryApp.controller('newsItemContr', function($scope, $http, $routeParams){

    $http.get('/news.json').success(function(responce){
        $scope.news = responce.news;
        $scope.itemNews = $routeParams.newsId;
        debugger;
        window.news = responce.news;
        window.itemNews = responce.itemNews;
    });

});