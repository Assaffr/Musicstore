app.controller( 'LoginController', function( $scope, LoginFactory ) {
	
	$scope.turnRegBox = function ( state ){
		$scope.regBox = state;
	};
	
	$scope.login_form = function(){
		LoginFactory.matchLogin($scope.login)
			.success( function( result ) {
				
			});
		
		
	};
});