angular.module('arch-app')
.controller('MainCtrl',
['$scope', '$http', '$window', function($scope, $http, $window) {
	
	//TODO: Put logged in user name in scope, from request parameter?
	
//	$scope.logout = function() {
//		$http.get('j_spring_security_logout')
//		.success(function(data, status, headers, config) {
//		    console.log('logout success');
//		    $window.location.href = '/ArchApp/login.html';
//		})
//		.error(function(data, status, headers, config) {
//			console.log('logout error');
//		});
//	};

}]);