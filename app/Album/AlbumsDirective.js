AlbumsModule.directive( 'topnav', function() {
	return {
		restrict: 'E',
		templateUrl: 'app/album/_topnav.html'
	};
});

AlbumsModule.directive( 'topbar', function() {
	return {
		restrict: 'E',
		templateUrl: 'app/album/_topbar.html'
	};
});
