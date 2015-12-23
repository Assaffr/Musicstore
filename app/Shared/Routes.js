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
		  
			.when('/home', {
			   templateUrl: 'templates/_home.html',
			   controller: 'MainController'
			})
			.when('/login', {
			   templateUrl: 'templates/_login.html',
			   controller: 'LoginController'
			})
			
			.when('/checkout/:currentStep', {
			   templateUrl: 'templates/_checkout.html',
			   controller: 'CheckoutController'
			})
		
			.otherwise({
				redirectTo : '/home'
			})
	}]);