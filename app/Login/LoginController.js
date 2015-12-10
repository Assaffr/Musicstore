app.controller( 'LoginController', function( $scope, LoginFactory ) {
	
	$scope.regBox = false;
	
	$scope.login_form = function(){
		console.log($scope.login);
		LoginFactory.matchLogin($scope.login)
			.success( function( result ) {
				
			});
		
		
	};
});