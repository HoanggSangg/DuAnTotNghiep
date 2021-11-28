app = angular.module("store-app", ["ngRoute"]);
app.config(function($routeProvider) {
	$routeProvider
		.when("/product", {
			templateUrl: "/store/product/indexProduct.html",
			controller: "product-ctrl"
		})
		.when("/infostore", {
			templateUrl: "/store/info/infostore.html",
			controller: "info-ctrl"
		})
		.when("/revenue", {
			templateUrl: "/store/revenue/thongke.html",
			controller: "revenue-ctrl"
		})
		.when("/order", {
			templateUrl: "/store/order/indexOrder.html",
			controller: "order-ctrl"
		})
		.otherwise({
			templete: "<h1 class='text-center'> FPT Polytecnich Administration</h1>"
		});
})