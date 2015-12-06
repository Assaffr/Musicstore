app.controller( 'SearchController', function( $scope, SearchService ) {

	$scope.checkFor3Chars = function(){
		if ($scope.searchbox.length > 2)
			$scope.searchTerm($scope.searchbox);
	}
	
	$scope.searchTerm = function(data){
		SearchService.search(data)
			.success( function( result ) {
				$scope.results = result;
			});
	}
	
	$scope.emptySearch = function(){
		$scope.searchbox = "";
		$scope.results = "";
	}
	
});