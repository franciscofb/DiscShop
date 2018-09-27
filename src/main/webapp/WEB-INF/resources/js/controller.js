/**
 *  User: FFB
 *    Date: 9/15/2018
 */

var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

    $scope.refreshCart = function () {
        $http.get('/TicketsPass/rest/cart/'+$scope.cartId).success(function (data) {
           $scope.cart=data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/TicketsPass/rest/cart/'+$scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/TicketsPass/rest/cart/add/'+productId).success(function () {
            alert("Adicionaod com sucesso ao carrinho!")
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/TicketsPass/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function () {
        var grandTotal=0;

        for (var i=0; i<$scope.cart.cartItems.length; i++) {
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    };
});