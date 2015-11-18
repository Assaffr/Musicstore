app.config(['$routeProvider',
	function($routeProvider) {
		$routeProvider.
			when('/category/:genre', {
			   templateUrl: 'templates/_category.html',
			   controller: 'genrePage'
			})
			
			.when('/product/:album', {
			   templateUrl: 'templates/_product.html',
			   controller: 'albumPage'
			})
		  
			.when('/', {
			   templateUrl: 'templates/_index.html',
			   controller: 'MainController'
			})
		
			.otherwise({
				redirectTo : '/'
			})
	}]);