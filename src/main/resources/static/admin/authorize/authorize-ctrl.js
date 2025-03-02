app.controller("ctrl", function($scope, $http) {
	$scope.db = [];
	var index = 0;
	var userForm;
	var roleForm;

	$scope.load = function() {
		$http.get("/rest/authorities").then(resp => {
			$scope.db = resp.data;
		})
	}

	$scope.index_of = function(username, role) {
		return $scope.db.authorities
			.findIndex(a => a.account.username == username && a.role.id == role);
	}

	$scope.authorityDelete = function() {
		var id = $scope.db.authorities[index].id;
		var username = $scope.db.authorities[index].account.username;
		if (username == $scope.db.user) {
			alert("Không được xóa quyền chính mình !!! " + $scope.db.user)
			$scope.load();
		} else {
			$http.delete(`/rest/authorities/${id}`).then(() => {
				alert("Xóa quyền " + $scope.db.authorities[index].role.name +
					" của tài khoản " + $scope.db.authorities[index].account.username + " thành công !!!");
				$scope.load();
			})
		}
	}

	$scope.authorityPost = function() {
		var authority = {
			account: { username: userForm },
			role: { id: roleForm }
		};
		$http.post('/rest/authority', authority).then(resp => {
			$scope.db.authorities.push(resp.data);
			$scope.load();
			alert("Thêm quyền thành công !!!");
		});
	}

	$scope.update = function(username, role) {

		index = $scope.index_of(username, role);
		userForm = username;
		roleForm = role;

		if (index >= 0) {
			this.authorityDelete();

			if (role == 'CH') {
				$http.get(`/rest/store/find/${userForm}`).then(resp => {
					let store = angular.copy(resp.data);
					if (store && Object.keys(store).length > 0) {
						store.trangthai = false;
						$http.post('/rest/store', store).then(() => {
							$scope.load();
						});
					}
				});
			}
		} else {
			this.authorityPost();

			if (role == 'CH') {
				$http.get(`/rest/store/find/${userForm}`).then(resp => {
					let store = angular.copy(resp.data);
					if (store && Object.keys(store).length > 0) {
						store.trangthai = true;
						$http.post('/rest/store', store).then(() => {
							$scope.load();
						});
					} else {
						store = {
							tencuahang: "Them ten cua hang",
							account: { username: username },
							trangthai: true,
							image: "cloud-upload.jpg",
						};
						$http.post('/rest/store', store).then(() => {
							$scope.load();
						});
					}
				});
			}
		}
	}

	$scope.load();

	$scope.timkiem = function() {
		var item = angular.copy($scope.name);
		if (item != null) {
			$http.get(`/rest/accounts/timkiem/${item}`).then(resp => {
				$scope.db.accounts = angular.copy(resp.data);
			})
		} else {
			alert("Vui lòng nhập dữ liệu vào thanh tìm kiếm !!!")
		}
	}
});