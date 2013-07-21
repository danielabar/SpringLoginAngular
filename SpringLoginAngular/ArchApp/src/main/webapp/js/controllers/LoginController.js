angular.module('arch-app-login')
.controller('LoginCtrl',
['$scope', '$routeParams', '$location', function($scope, $routeParams, $location) {
	
	$scope.loginErrorMessage = null;
	
	if ('/error' === $location.path()) {
		$scope.loginErrorMessage = 'Incorrect username or password, please try again';
	}
	
}]);