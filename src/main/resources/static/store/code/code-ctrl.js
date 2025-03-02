app.controller("code-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.form = {};
	var user;
	var tencuahang;
	var idStore;

	$scope.initialize = function() {
		$http.get("/rest/accounts/user").then(resp => {
			user = resp.data.user;
			$http.get("/rest/store/find/" + user).then(resp => {
				idStore = resp.data;
				tencuahang = resp.data.tencuahang;
				$scope.form = {
					cuahang: { tencuahang: resp.data.tencuahang },
				};
			})

			$http.get("/rest/code/" + user).then(resp => {
				$scope.items = resp.data;
			})
		})
		$scope.reset();
	};

	//--------------- Delete Modal --------------------------------
	$scope.setDeleteId = function(id) {
		$scope.deleteId = id;
	};

	$scope.deleteModal = function() {
		if ($scope.deleteId) {
			$http.delete(`/rest/code/${$scope.deleteId}`)
				.then(() => {
					alert("Xóa thành công!!!");
					$scope.initialize();
				})
				.catch(error => {
					console.error("Lỗi khi xóa:", error);
				});
		}
	};

	$scope.changeStatus = function(id) {
		$http.get(`/rest/code/changeStatus/` + id).then(resp => {

			if (resp.data.trangthai == false) {
				resp.data.trangthai = true;
			} else {
				resp.data.trangthai = false;
			}

			$http.put(`/rest/code`, resp.data).then(() => {
				$scope.initialize();
			}).catch(error => {
				console.log("Error", error);
			});
		})
	}

	$scope.reset = function() {
		$scope.form = {
			cuahang: { tencuahang: tencuahang },
			starday: new Date(),
			endday: new Date(),

		};
	}

	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$scope.form.starday = new Date($scope.form.starday);
		$scope.form.endday = new Date($scope.form.endday);
		$(".nav-tabs a:eq(0)").tab('show')
	};

	$scope.backTable = function() {
		$(".nav-tabs a:eq(1)").tab('show')
	};

	$scope.create = function() {
		$scope.validatePercent();
		var itemCode = angular.copy($scope.form);

		itemCode.cuahang = idStore;
		itemCode.trangthai = true;
		itemCode.code = Math.floor(((Math.random() * 8999999999) + 1000000000));

		$http.post(`/rest/code`, itemCode).then(resp => {
			$scope.items.push(resp.data);
			alert("Thêm mới thành công !!!");
			$scope.initialize();
			$scope.backTable();
		}).catch(error => {
			alert("Lỗi thêm mới sản phẩm !!!");
			console.log("Error", error);
		});
	};

	$scope.update = function() {
		$scope.validatePercent();
		var itemCode = angular.copy($scope.form);

		$http.put(`/rest/code`, itemCode).then(() => {
			alert("Cập nhật thành công !!!");
			$scope.initialize();
			$scope.backTable();
		}).catch(error => {
			console.log("Error", error);
		});
	};

	$scope.delete = function(item) {
		$http.delete(`/rest/code/${item.id}`).then(() => {
			var index = $scope.items.findIndex(p => p.id == item.id);
			$scope.items.splice(index, 1);
			$scope.initialize();
			$scope.backTable();
		}).catch(error => {
			console.log("Error", error);
		});
	};

	$scope.validatePercent = function() {
		if ($scope.form.percents > 100) {
			$scope.form.percents = 100;
		} else if ($scope.form.percents < 0) {
			$scope.form.percents = 0;
		}
	};

	$scope.initialize();

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


	$scope.timkiem = function() {
		var item = angular.copy($scope.form);
		if (item.code != null) {
			$http.get(`/rest/code/search/${item.code}`).then(resp => {
				$scope.items = angular.copy(resp.data);
				console.log($scope.items);
			})
		} else {
			alert("Vui lòng nhập dữ liệu vào thanh tìm kiếm !!!")
		}
	}
});