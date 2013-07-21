'use strict';


var ArchAppLogin = angular.module("arch-app-login", ['ngCookies']);

ArchAppLogin.config(function ($routeProvider) {
	$routeProvider     
		.when('/status/:statusCode', {
			controller: 'LoginCtrl'
		})
		.otherwise({
			redirectTo: '/'
		});
	});