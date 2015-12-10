app.controller( 'RegisterController', function( $scope, RegisterFactory ) {
	
	
	$scope.register_form = function(){
		console.log( $scope.regForm.user_email.$dirty )
			RegisterFactory.registerUser($scope.register)
			.success( function( result ) {
				
			});
		
	};
	$scope.checkEmail = function(email){
		console.log("fg");
		// RegisterFactory.checkMailAvail(email)
			// .success( function( result ) {
				
			// })
			return true;
	};
});