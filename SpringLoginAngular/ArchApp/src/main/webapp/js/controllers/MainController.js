angular.module('arch-app')
.controller('MainCtrl',
['$rootScope', '$http', function($rootScope, $http) {
	
	$http.get('rest/user')
		.success(function(data, status, headers, config) {
			$rootScope.user = data;
		})
		.error(function(data, status, headers, config) {
			$rootScope.error = 'Getting user failed: ' + status;
		});

}]);