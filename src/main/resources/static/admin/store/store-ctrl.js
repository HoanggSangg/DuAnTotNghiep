app.controller("store-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.cates = [];
	$scope.db = [];
	$scope.acc = [];
	$scope.form = {};
	$scope.deleteId = null;
	var index = 0;

	$scope.initialize = function() {
		$http.get("/rest/authorities").then(resp => {
			$scope.db = resp.data;
		})
		$http.get("/rest/store").then(resp => {
			$scope.items = resp.data;
		})
		$http.get("/rest/accounts/user").then(resp => {
			$scope.acc = resp.data;
		})
		$scope.reset();
	}

	$scope.index_of = function(username, role) {
		return $scope.db.authorities
			.findIndex(a => a.account.username == username && a.role.id == role);
	}

	//--------------- Delete Modal --------------------------------
	$scope.setDeleteId = function(id) {
		$scope.deleteId = id;
	};

	$scope.deleteModal = function() {
		if ($scope.deleteId) {
			$http.get("/rest/store/" + $scope.deleteId).then(resp => {
				
				index = $scope.index_of(resp.data.account.username, 'CH');
				var idAuth = $scope.db.authorities[index].id;

				if ($scope.acc.user == resp.data.account.username) {
					alert("Không được xóa tài khoản đang đăng nhập !!!");
				} else {
					$http.delete(`/rest/store/${$scope.deleteId}`).then(() => {

						$http.delete(`/rest/authorities/` + idAuth).then(() => {
							alert("Xóa thành công!!!");
							$scope.initialize();
						})
					}).catch(error => {
						console.error("Lỗi khi xóa:", error);
					});
				}
			});
		}
	};

	$scope.reset = function() {
		$scope.form = {
			image: 'cloud-upload.jpg',
			trangthai: true,
		};
	}
	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
	}
	$scope.backTable = function() {
		$(".nav-tabs a:eq(1)").tab('show')
	}
	$scope.update = function() {
		var item = angular.copy($scope.form);
		$http.put(`/rest/store/${item.id}`, item).then(() => {
			$scope.initialize();
			$scope.backTable();
			$scope.message = "Cập nhật thành công !!!";
		}).catch(error => {
			alert("Lỗi cập nhật sản phẩm !!!");
			console.log("Error", error);
		});
	}
	$scope.delete = function(item) {
		if ($scope.acc.user == item.account.username) {
			alert("Không được xóa tài khoản đang đăng nhập !!!")
		} else {
			$http.delete(`/rest/store/${item.id}`).then(() => {
				$scope.initialize();
				$scope.backTable();
				$scope.message = "Xóa tài khoản thành công !!!";
			}).catch(error => {
				console.log("Error", error);
			});
		}
	}
	$scope.stttrue = function(item) {
		item.trangthai = true;
		$http.put(`/rest/store/${item.id}`, item).then(() => {
			$scope.initialize();
			alert("Chuyển trạng thái thành công !!!");
		}).catch(error => {
			console.log("Error", error);
		});
	}
	$scope.sttfalse = function(item) {
		item.trangthai = false;
		$http.put(`/rest/store/${item.id}`, item).then(() => {
			$scope.initialize();
			alert("Chuyển trạng thái thành công !!!");
		}).catch(error => {
			console.log("Error", error);
		});
	}
	$scope.imageChanged = function(files) {
		var data = new FormData();
		data.append('file', files[0]);
		$http.post('/rest/upload/images', data, {
			transformRequest: angular.indentity,
			headers: { 'Content-Type': undefined }
		}).then(resp => {
			$scope.form.image = resp.data.name;
		}).catch(error => {
			alert("Lỗi upload hình ảnh");
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
			$http.get(`/rest/store/timkiem/${item.name}`).then(resp => {
				$scope.items = angular.copy(resp.data);
			})
		} else {
			alert("Vui lòng nhập dữ liệu vào thanh tìm kiếm !!!")
		}
	}
});