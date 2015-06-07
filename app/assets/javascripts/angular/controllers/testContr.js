rotaryApp.controller('testContr', function($scope){

    $scope.list = 'one, two, three';
    angular.element(document).ready($initialFunction());

    $scope.$on('$routeChangeStart', function(){
        $initialFunction();
        //debugger;
    });
});