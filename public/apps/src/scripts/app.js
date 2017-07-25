(function() {
	function config($locationProvider, $stateProvider, $urlRouterProvider, $authProvider) {
		// $locationProvider
		// 		.html5Mode({
		// 				enabled: true,
		// 				requireBase: false
		// 		 });

		$stateProvider
				.state('home', {
						url: '/',
						controller: 'HomeCtrl as home',
						templateUrl: '/app/src/templates/home.html'
				});

		$urlRouterProvider.otherwise('/');

		$authProvider.configure({
			apiUrl: 'http://localhost:3000/api'
		});
	}




		angular
				.module('blocitoff', ['ui.router', 'ng-token-auth'])
				.config(config);
})();
