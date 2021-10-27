const app = angular.module("shopping-cart-app", []);
app.controller("shopping-cart-ctrl", function($scope, $http) {

	//------------------------------------Code JS Cart----------------------------
	$scope.cart = {
		items: [],
		add(id) {
			$http.get(`/rest/products/${id}`).then(resp => {
				var item = this.items.find(item => item.id == id);
				if (item) {
					if (resp.data.soluong > item.qty) {
						item.soluong--;
						item.qty++;
						this.saveToLocalStorage();
					} else {
						item.soluong = 0;
						this.saveToLocalStorage();
						alert("Hết hàng !!!")
					}
				} else {
					if (resp.data.soluong >= 1) {
						resp.data.qty = 1;
						resp.data.soluong--;
						this.items.push(resp.data);
						this.saveToLocalStorage();
					} else {
						alert("Hết hàng !!!")
					}
				}
			})
		},
		remove(id) {
			var index = this.items.findIndex(item => item.id == id);
			var item = this.items.find(item => item.id == id);
			if (item.qty > 1) {
				item.qty--;
				this.saveToLocalStorage();
			} else {
				this.items.splice(index, 1);
				this.saveToLocalStorage();
			}
		},
		clear() {
			this.items = []
			this.saveToLocalStorage();
		},
		get count() {
			return this.items
				.map(item => item.qty)
				.reduce((total, qty) => total += qty, 0);
		},
		get amount() {
			return this.items
				.map(item => item.qty * item.price)
				.reduce((total, qty) => total += qty, 0)
		},
		saveToLocalStorage() {
			var json = JSON.stringify(angular.copy(this.items));
			localStorage.setItem("cart", json);
		},
		loadFromLocalStorage() {
			var json = localStorage.getItem("cart");
			this.items = json ? JSON.parse(json) : [];
		}
	}
	$scope.cart.loadFromLocalStorage();

	//----------------------------------Code JS Order-----------------------------
	$scope.order = {
		createDate: new Date(),
		account: { username: $("#username").text() },
		tongtien() {
			return $scope.cart.items
				.map(item => item.qty * item.price)
				.reduce((total, qty) => total += qty, 0)
		},
		get orderDetails() {
			return $scope.cart.items.map(item => {
				return {
					product: { id: item.id },
					price: item.price,
					quantity: item.qty,
				}
			});
		},
		loadcart() {
			return $scope.cart.items.map(item => {
				$http.put(`/rest/products/${item.id}`, item).then(resp => {
				}).catch(error => {
					alert("Lỗi cập nhật sản phẩm");
					console.log("Error", error);
				});
			});
		},
		purchase() {
			var order = angular.copy(this);
			order.trangthai = "Đã đặt hàng"
			order.tongtien = this.tongtien();
			$http.post("/rest/orders", order).then(resp => {
				alert("Đặt hàng thành công");
				$scope.order.loadcart();
				$scope.cart.clear();
				location.href = "/order/detail/" + resp.data.id;
			}).catch(error => {
				alert("Đặt hàng lỗi")
				console.log(error)
			})
		}
	}

	//-----------------------------Code JS Accounts------------------------------
	$scope.accounts = {
		loadtk() {
			var username = $("#username").text();
			if (username != "") {
				$http.get(`/rest/accounts/${username}`).then(resp => {
					$scope.accounts = resp.data;
				})
			}
		},
		imageChanged(files) {
			var data = new FormData();
			data.append('file', files[0]);
			$http.post('/rest/upload/images', data, {
				transformRequest: angular.indentity,
				headers: { 'Content-Type': undefined }
			}).then(resp => {
				this.photo = resp.data.name;
			}).catch(error => {
				alert("Lỗi upload hình ảnh");
				console.log("Error", error);
			})
		},
		dangky() {
			var accounts = angular.copy(this);
			accounts.trangthai = true;
			$http.post(`/rest/accounts`, accounts).then(resp => {
				var authority = {
					account: { username: accounts.username },
					role: { id: "KH" }
				};
				$http.post(`/rest/authority`, authority).then(resp => {
					alert("Đăng ký thành công")
					location.href = ('/security/login');
				}).catch(error => {
					console.log("Error", error);
				})
			}).catch(error => {
				alert("Lỗi thêm mới tài khoản");
				console.log("Error", error);
			});
		},
		quenmk() {
			var accounts = angular.copy(this);
			$http.get(`/rest/accounts/${accounts.username}`).then(resp => {
				accounts = resp.data;
				//từ 100000-999999
				var a = Math.floor(Math.random() * (1000000 - 100000)) + 100000;
				accounts.password = a;
				$http.put(`/rest/accounts/${accounts.username}`, accounts).then(resp => {
					alert("Mật khẩu mới là: " + accounts.password)
					location.href = "/security/login";
				})
			})
		}
	}
	$scope.accounts.loadtk();
	$scope.doimk = function() {
		var item = angular.copy($scope.form);
		var username = $("#username").text();
		$http.get(`/rest/accounts/${username}`).then(resp => {
			item = resp.data;
			if (item.password == $scope.form.password) {
				if ($scope.form.newPass == $scope.form.confirm) {
					item.password = $scope.form.newPass;
					$http.put(`/rest/accounts/${username}`, item).then(resp => {
						alert("Mật khẩu mới là: " + item.password)
						location.href = ('/security/logoff');
					})
				} else {
					alert("Nhập lại mật khẩu không đúng")
				}
			} else {
				alert("Sai mật khẩu hoặc tài khoản")
			}
			$scope.form = {};
		})
	}

	//---------------------------Code JS Likes--------------------------
	$scope.likes = [];
	$scope.index_of = function(username, id) {
		return $scope.likes
			.findIndex(a => a.account.username == username && a.product.id == id);
	}
	$scope.products = {
		load() {
			$http.get("/rest/likes").then(resp => {
				$scope.likes = resp.data;
			})
		},
		loadcart() {
			return $scope.likes.map(item => {
				var username = $("#username").text();
				index = $scope.index_of(username, item.product.id);
				alert(index)
			});
		},
		like(id) {
			var username = $("#username").text();
			var likes = {
				account: { username: username },
				product: { id: id },
				date: new Date(),
				likes: "1",
			};
			$http.post('/rest/likes', likes).then(resp => {
				alert("Thích thành công")
			});
		},
		dislike(id) {
			var username = $("#username").text();
			index = $scope.index_of(username, id);
			var id = $scope.likes[index].id;
			$http.delete(`/rest/likes/${id}`).then(resp => {
				$scope.likes.splice(index, 1);
				alert("Xóa thích thành công")
			})
		}
	}
	$scope.products.load();

	//-------------------------Code JS Comments---------------------------
	$scope.cmtproduct = {
		post(id) {
			var cmtproduct = {
				account: { username: $("#username").text() },
				product: { id: id },
				date: new Date(),
				comment: $scope.cmtproduct.comment
			};
			if (cmtproduct.account.username == "") {
				location.href = "/security/login";
			} else {
				$http.post(`/rest/cmtproduct`, cmtproduct).then(resp => {
					$http.get(`/rest/products/${id}`).then(resp => {
						location.href = "/product/detail/" + id + "?cid=" + resp.data.catesmall.category.id;
					})
				}).catch(error => {
					console.log("Error", error);
				})
			}

		}
	}
})