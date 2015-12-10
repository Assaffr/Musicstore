app.controller( 'RegisterController', function( $scope, RegisterFactory ) {
	
	
	$scope.register_form = function(){
		console.log($scope.register);
			RegisterFactory.registerUser($scope.register)
			.success( function( result ) {
				
			});
		
	};
	$scope.checkEmail = function(email){
		RegisterFactory.checkMailAvail(email)
			.success( function( result ) {
				console.log(result);
			})
	};
});