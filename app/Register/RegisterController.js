app.controller( 'RegisterController', function( $scope, RegisterFactory ) {
	
	
	$scope.register_form = function(){
			RegisterFactory.registerUser($scope.register)
			.success( function( result ) {
				
			});
		
	};
	$scope.checkEmail = function(email){
		RegisterFactory.checkMailAvail(email)
			.success( function( result ) {
				// result 0 = the mail is available, result 1 = it is taken
				console.log(result);
			})
	};
});