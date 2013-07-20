angular.module('arch-app-login')
.controller('LoginCtrl',
['$scope', '$http', '$window', function($scope, $http, $window) {

	$scope.login = function() {
		
		var payload = 'j_username=' + $scope.j_username + '&j_password=' + $scope.j_password;
		var config = {headers: {'Content-Type':'application/x-www-form-urlencoded; charset=UTF-8'}};
		
		$http.post('j_spring_security_check', payload, config)
			.success(function(data, status, headers, config) {
				console.log('login success');
				$window.location.href = '/ArchApp/index.html';
			})
			.error(function(data, status, headers, config) {
				console.log('login error');
			});
	};

}]);