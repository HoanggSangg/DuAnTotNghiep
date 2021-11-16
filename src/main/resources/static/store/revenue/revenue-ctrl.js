app.controller("revenue-ctrl", function($scope, $http) {
	$scope.items = [];
	
	$scope.initialize = {
		tongtien() {
			return $scope.items
				.map(item => item.quantity * item.price)
				.reduce((total, qty) => total += qty, 0)
		},
		load() {
			$http.get("/rest/accounts/user").then(resp => {
				var user = resp.data.user;
				$http.get("/rest/orders/" + user).then(resp => {
					$scope.items = resp.data;
					alert(this.tongtien())
				})
			})
		}
	}
	$scope.initialize.load();

});