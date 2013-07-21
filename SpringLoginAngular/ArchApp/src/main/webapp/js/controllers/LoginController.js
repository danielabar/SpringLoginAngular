angular.module('arch-app-login')
.controller('LoginCtrl',
['$scope', '$routeParams', function($scope, $routeParams) {
	
	$scope.params = $routeParams;
	
}]);