rotaryApp.controller('newsController', function($scope, $http){

    $http.get('/news.json').success(function(responce){
        $scope.news =  responce
    });

});