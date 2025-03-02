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
		save(id) {
			$http.get(`/rest/products/${id}`).then(resp => {
				var item = this.items.find(item => item.id == id);
				if (item) {
					if (resp.data.soluong >= item.qty) {
						this.saveToLocalStorage();
						var json = JSON.stringify(angular.copy(this.items));
						localStorage.setItem("cart", json);
					} else {
						item.qty = item.soluong + 1;
						this.saveToLocalStorage();
						alert("Hết hàng !!!")
					}
				}
			})
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
		pay() {
			if ($scope.tinh != null && $scope.quan != null && $scope.duong != null) {
				if ($scope.bankcode == "TT") {
					var order = angular.copy(this);
					order.trangthai = "Đã đặt hàng"
					order.tongtien = this.tongtien();
					order.diachinn = "Tỉnh: " + $scope.tinh + " - " + "Quận: " + $scope.quan + " - " + "Đường: " + $scope.duong;

					$scope.savecart().then(() => { 
						return $http.post("/rest/orders", order);
					}).then(() => {
						$scope.cart.clear();
						location.href = "/order/list";
					}).catch(error => {
						console.error("Lỗi khi đặt hàng:", error);
					});
					
				} else if ($scope.bankcode == "NCB") {
					var order = angular.copy(this);
					order.trangthai = "Đơn hàng đang xử lí"
					order.tongtien = this.tongtien();
					order.diachinn = "Tỉnh: " + $scope.tinh + " - " + "Quận: " + $scope.quan + " - " + "Đường: " + $scope.duong;
					$scope.savecart();
					$http.post("/rest/pay", order).then(resp => {
						$scope.payment = resp.data;
						$scope.cart.clear();
						location.href = $scope.payment.url;
					})
				} else {
					alert("Chọn hình thức thanh toán")
				}
			} else {
				alert("Chọn thông tin địa chỉ giao hàng")
			}
		}
	}

	$scope.savecart = function() {
		let promises = $scope.cart.items.map(item => {
			let carttest = {
				productid: item.id,
				username: $("#username").text(),
				cuahang: item.cuahang.tencuahang,
				price: item.price,
				qty: item.qty
			};
			return $http.post(`/rest/cart`, carttest);
		});

		return Promise.all(promises);
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
				$scope.accounts.photo = resp.data.name;
			}).catch(error => {
				alert("Lỗi upload hình ảnh");
				console.log("Error", error);
			})
		},
		dangky() {
			var accounts = angular.copy(this);
			accounts.trangthai = true;
			$http.post(`/rest/accounts`, accounts).then(() => {
				var authority = {
					account: { username: accounts.username },
					role: { id: "KH" },
				};
				$http.post(`/rest/authority`, authority).then(() => {
					alert("Đăng ký thành công");
					location.href = ('/security/login');
				}).catch(error => {
					console.log("Error", error);
				})
			}).catch(error => {
				$scope.message = "Lỗi thêm mới tài khoản !!!";
				console.log("Error", error);
			});
		},
		quenmk() {
			var code = Math.floor(((Math.random() * 899999) + 100000));
			var codeqmk = {
				code: code,
				account: { username: $scope.username },
				date: new Date(),
				trangthai: true
			};
			$http.get(`/rest/accounts/` + $scope.username)
				.then(resp => {
					if (resp.data.email == $scope.email) {
						$http.post(`/rest/codeqmk`, codeqmk).then(() => {
							location.href = "/codeqmk";
						})
					} else {
						$scope.message = "Mail của bạn không chính xác !!!";
					}
				})
				.catch(error => {
					$scope.message = "Không tìm thấy tài khoản" + error;
				});
		},
		codeqmk() {
			var forgot = {
				codeqmk: $scope.code
			}
			$http.put(`/rest/accounts/forgot`, forgot).then(() => {
				alert("Mời bạn xem lại email !!!");
				location.href = "/security/login";
			})
		}

	}
	$scope.accounts.loadtk();

	$scope.doiMk = function() {
		var item = angular.copy($scope.form);
		var username = $("#username").text();
		$http.get(`/rest/accounts/${username}`).then(resp => {
			item = resp.data;
			if (item.password == $scope.form.password) {
				if ($scope.form.newPass == $scope.form.confirm) {
					item.password = $scope.form.newPass;
					$http.put(`/rest/accounts/${username}`, item).then(() => {
						alert("Đổi mật khẩu thành công");
						location.href = ("/security/logoff");
					})
				} else {
					$scope.message = "Nhập lại mật khẩu không đúng !!!";
					$scope.form = {};
				}
			} else {
				$scope.message = "Sai tài khoản hoặc mật khẩu !!!";
				$scope.form = {};
			}
		})
	}
	$scope.imageChanged = function(files) {
		var data = new FormData();
		data.append('file', files[0]);
		$http.post('/rest/upload/images', data, {
			transformRequest: angular.indentity,
			headers: { 'Content-Type': undefined }
		}).then(resp => {
			$scope.photo = resp.data.name;
		}).catch(error => {
			alert("Lỗi upload hình ảnh");
			console.log("Error", error);
		})
	}

	$scope.capnhattk = function() {
		var username = $("#username").text();
		$http.get(`/rest/accounts/${username}`).then(resp => {
			var item = {
				username: username,
				password: resp.data.password,
				fullname: $scope.fullname,
				email: $scope.email,
				photo: $scope.photo,
				trangthai: resp.data.trangthai,
			}
			$http.put(`/rest/accounts/` + username, item).then(() => {
				alert('Cập nhật thành công !!!');
				location.href = '/account/individual';
			})
			this.item = {};
		}).catch(error => {
			$scope.message = error;
		});
	}

	//---------------------------Code JS Likes--------------------------
	$scope.likes = [];
	$scope.index_of = function(username, id) {
		return $scope.likes
			.findIndex(a => a.account.username == username && a.product.id == id);
	}
	$scope.load = function() {
		$http.get('/rest/likes').then(resp => {
			$scope.likes = resp.data;
		});
	}
	$scope.products = {
		like(id) {
			var username = $("#username").text();
			var likes = {
				account: { username: username },
				product: { id: id },
				date: new Date(),
				likes: "1",
			};
			$http.post('/rest/likes', likes).then(() => {
				$scope.load();
				location.reload();
			});
		},
		dislike(id) {
			var username = $("#username").text();
			index = $scope.index_of(username, id);
			var id = $scope.likes[index].id;
			$http.delete(`/rest/likes/${id}`).then(() => {
				$scope.likes.splice(index, 0);
				$scope.load();
				location.reload();
			})
		}
	}
	$scope.load();

	//-------------------------Code JS Comments---------------------------
	$scope.now = new Date();
	$scope.cmtproduct = {
		post(id) {
			var cmtproduct = {
				account: { username: $("#username").text() },
				product: { id: id },
				date: new Date(),
				comment: $scope.cmtproduct.comment,
			};
			if (cmtproduct.account.username == "") {
				location.href = "/security/login";
			} else {
				$http.post(`/rest/cmtproduct`, cmtproduct).then(() => {
					$http.get(`/rest/products/${id}`).then(() => {
						location.reload();
					})
				}).catch(error => {
					console.log("Error", error);
				})
			}

		}
	}
	//-----------------------------------Code CommentStore------------------------------
	$scope.cmtstore = {
		post(id) {
			var cmtstore = {
				account: { username: $("#username").text() },
				cuahang: { id: id },
				date: new Date(),
				comment: $scope.cmtstore.comment
			};
			if (cmtstore.account.username == "") {
				location.href = "/security/login";
			} else {
				$http.post(`/rest/cmtstore`, cmtstore).then(() => {
					location.reload();
				}).catch(error => {
					console.log("Error", error);
				})
			}

		}
	}
	//---------------------------------Code Post--------------------------------------
	$scope.tintuc = {
		post() {
			var post = {
				account: { username: $("#username").text() },
				noidung: $scope.noidung,
				image: $scope.photo
			};
			$http.post(`/rest/post`, post).then(resp => {
				location.href = "/home/tintuc"
			}).catch(error => {
				console.log("Error", error);
			})
		}
	}
})
