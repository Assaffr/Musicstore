app.controller( 'SearchController', function( $scope, SearchService ) {

	$scope.checkFor3Chars = function(){
		if ($scope.searchbox.length > 3)
			$scope.searchTerm($scope.searchbox);
	}
	
	$scope.searchTerm = function(data){
		SearchService.search(data)
			.success( function( result ) {
				$scope.results = result;
			});
	}
	
});