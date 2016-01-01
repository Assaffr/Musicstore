app.controller( 'LoginController', function( $scope, LoginFactory, $location ) {
	
	$scope.turnRegBox = function ( state ){
		$scope.regBox = state;
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
					$scope.checkIfLoggedIn = true;
					$scope.logMessage = "Log out";
					$scope.kickFromLogin();
				}
				else{
					$scope.checkIfLoggedIn = false;
					$scope.logMessage = "Log In";
				}
			});
	}
	
	$scope.checkLoginStatus();
	
	
	$scope.kickFromLogin = function(){
		$location.path('/');
	};
	
	$scope.logOut = function(){
		$scope.logMessage = "Log In";
		$scope.checkIfLoggedIn = false;
		LoginFactory.logOut()
			.success( function( result ) {
				
			});
	};
});