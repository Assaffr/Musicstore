app.controller( 'LoginController', function( $scope, LoginFactory, $location ) {
	
	$scope.turnRegBox = function ( state ){
		$scope.regBox = state;
	};
	
	$scope.SetTheSession = function ( params ){
		LoginFactory.setLocalSession( params );

	};
	
	$scope.login_form = function(){
		LoginFactory.matchLogin($scope.login)
			.success( function( result ) {
				$scope.checkLoginStatus();
			});
	};
	
	$scope.logMessage = "";
	
	
	
	$scope.checkLoginStatus = function(){
		
		LoginFactory.checkLoginStatus()
			.success( function( result ) {
				if (result.login == "true"){
					$scope.SetTheSession( result );
					$scope.checkIfLoggedIn = true;
					$scope.kickFromLogin();
					console.log( result.login )
				}
				else{
					$scope.checkIfLoggedIn = false;
				}
			});
	}
	
	
	$scope.checkLoginStatus()
	

	
	
	$scope.kickFromLogin = function(){
		$location.path('/');
	};
	
	$scope.logOut = function(){
		LoginFactory.logOut()
			.success( function( result ) {
				$scope.checkIfLoggedIn = false;	
				LoginFactory.destroyLocalSession();
			});
	};
});