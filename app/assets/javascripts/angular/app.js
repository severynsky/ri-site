rotaryApp = angular.module('rotaryApp', [
    'ngRoute',
    'ngResource',
    'templates'

]);
    rotaryApp.controller('mainController', function($scope, $location){
        $scope.go = function(path){
            $location.path(path);
        }
    });

rotaryApp.run(function(){
    console.log('angular app is running')
});

