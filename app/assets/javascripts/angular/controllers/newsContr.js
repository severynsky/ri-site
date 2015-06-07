rotaryApp.controller('newsContr', function($scope, $http){

    $http.get('/news.json').success(function(responce){
        $scope.news = responce.news;
        window.news = responce.news;
        //debugger
    });

});