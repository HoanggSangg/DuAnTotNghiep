app.controller("account-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.acc = [];
	$scope.form = {};

	$scope.initialize = function() {
		$http.get("/rest/accounts/load").then(resp => {
			$scope.items = resp.data;
		})
		$http.get("/rest/accounts/user").then(resp => {
			$scope.acc = resp.data;
		})
		$scope.reset();
	}
	
	//--------------- Delete Modal --------------------------------
	$scope.setDeleteId = function(username) {
		$scope.deleteId = username;
	};

	$scope.deleteModal = function() {
		if ($scope.deleteId) {
			$http.get("/rest/accounts/" + $scope.deleteId).then(resp => {
				if ($scope.acc.user == resp.data.username) {
					alert("Không được xóa tài khoản đang đăng nhập !!!");
					$('#delete-modal').modal('hide');
				} else {
					$http.delete(`/rest/accounts/${$scope.deleteId}`)
						.then(() => {
							alert("Xóa thành công!!!");
							$scope.initialize();
						})
						.catch(error => {
							console.error("Lỗi khi xóa:", error);
						});
				}
			});
		}
	};
	
	$scope.reset = function() {
		$scope.form = {
			photo: 'cloud-upload.jpg',
			trangthai: true,
		};
	}
	$scope.backTable = function() {
		$(".nav-tabs a:eq(1)").tab('show')
	}
	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
	}
	$scope.create = function() {
		var item = angular.copy($scope.form);
		$http.post(`/rest/accounts`, item).then(() => {
			var authority = {
				account: { username: item.username },
				role: { id: "KH" },
			};
			$http.post(`/rest/authority`, authority).then(() => {
				$scope.initialize();
				$scope.message = "Thêm mới thành công !!!";
			}).catch(error => {
				console.log("Error", error);
			})
		}).catch(error => {
			alert("Lỗi thêm mới tài khoản !!!");
			console.log("Error", error);
		});
	}
	$scope.update = function() {
		var item = angular.copy($scope.form);
		$http.put(`/rest/accounts/${item.username}`, item).then(() => {
			$scope.initialize();
			$scope.backTable();
			$scope.message = "Cập nhật thành công !!!";
		}).catch(error => {
			alert("Lỗi cập nhật tài khoản !!!");
			console.log("Error", error);
		});
	}
	$scope.delete = function(item) {
		if ($scope.acc.user == item.username) {
			alert("Không được xóa tài khoản đang đăng nhập")
		} else {
			$http.delete(`/rest/accounts/${item.username}`).then(() => {
				$scope.initialize();
				$scope.backTable();
				alert("Xóa tài khoản thành công !!!");
			}).catch(error => {
				alert("Lỗi xóa tài khoản !!!");
				console.log("Error", error);
			});
		}
	}
	$scope.stttrue = function(item) {
		if ($scope.acc.user == item.username) {
			alert("Không được chuyển trạng thái tài khoản đang đăng nhập !!!")
		} else {
			item.trangthai = true;
			$http.put(`/rest/accounts/${item.username}`, item).then(() => {
				$scope.initialize();
				alert("Chuyển trạng thái thành công !!!");
			}).catch(error => {
				console.log("Error", error);
			});
		}
	}
	$scope.sttfalse = function(item) {
		if ($scope.acc.user == item.username) {
			alert("Không được chuyển trạng thái tài khoản đang đăng nhập !!!")
		} else {
			item.trangthai = false;
			$http.put(`/rest/accounts/${item.username}`, item).then(() => {
				$scope.initialize();
				alert("Chuyển trạng thái thành công !!!");
			}).catch(error => {
				console.log("Error", error);
			});
		}
	}
	$scope.imageChanged = function(files) {
		var data = new FormData();
		data.append('file', files[0]);
		$http.post('/rest/upload/images', data, {
			transformRequest: angular.indentity,
			headers: { 'Content-Type': undefined }
		}).then(resp => {
			$scope.form.photo = resp.data.name;
		}).catch(error => {
			console.log("Error", error);
		})
	}
	$scope.pager = {
		page: 0,
		size: 8,
		get items() {
			var start = this.page * this.size;
			return $scope.items.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
		first() {
			this.page = 0;
		},
		prev() {
			this.page--;
			if (this.page < 0) {
				this.last();
			}
		},
		next() {
			this.page++;
			if (this.page >= this.count) {
				this.first();
			}
		},
		last() {
			this.page = this.count - 1;
		}
	}
	$scope.initialize();

	$scope.timkiem = function() {
		var item = angular.copy($scope.form);
		if (item.name != null) {
			$http.get(`/rest/accounts/timkiem/${item.name}`).then(resp => {
				$scope.items = angular.copy(resp.data);
				console.log($scope.items);
			})
		} else {
			alert("Vui lòng nhập dữ liệu vào thanh tìm kiếm !!!")
		}
	}
});