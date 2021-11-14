app.controller("info-ctrl", function($scope, $http) {

	$scope.store = {
		loadstore() {
			$http.get("/rest/accounts/user").then(resp => {
				var user = resp.data.user;
				$http.get("/rest/store/find/" + user).then(resp => {
					$scope.store = resp.data;
				})
			})
		}
	}
	$scope.store.loadstore();
});