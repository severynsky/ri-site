rotaryApp.controller('homeContr', function($scope, Auth){

  angular.element(document).ready(
    $initialFunction());

  console.info(Auth._currentUser);

});