rotaryApp = angular.module('rotaryApp', [
    'ngRoute',
    'templates'
    //'ngResource'

]);
    rotaryApp.controller('mainController', function($scope, $location){
        $scope.go = function(path){
            $location.path(path);
        }
    })

rotaryApp.run(function(){
    console.log('angular is running')
});

