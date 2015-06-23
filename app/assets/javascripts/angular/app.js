rotaryApp = angular.module('rotaryApp', [
    'ngRoute',
    'ngResource',
    'ngSanitize',
    'templates',
    'Devise'

]);
config(function(AuthProvider) {
        // Configure Auth service with AuthProvider
}).
rotaryApp.controller('mainController', function($scope, $location, Auth){
        $scope.go = function(path){
        $location.path(path);
    }
});

rotaryApp.run(function(){
    console.log('angular app is running')

});

