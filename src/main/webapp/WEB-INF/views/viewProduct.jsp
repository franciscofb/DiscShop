<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>${product.productName}</h1>

            <p class="lead">${product.productDescription};
            </p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%;height: auto;"/>
                </div>

                <div class="col-md-5">
                    <p>
                       <strong> <h4>${product.productPrice} R$</h4></strong>
                    </p>
                    <p>
                        <strong>Categoria</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Estado</strong> : ${product.productStatus}
                    </p>


                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="${url}" />" class="btn btn-default">Voltar</a>
                        <c:if test="${!product.productStatus != \"Esgotado\"}">
                            <a href="#" class="btn btn-warning btn-large"
                               ng-click="addToCart('${product.productId}')"><span
                                    class="glyphicon glyphicon-shopping-cart"></span>Comprar</a>
                        </c:if>
                        <a href="<spring:url value="/customer/cart" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>Carrinho</a>
                    </p>
                </div>
            </div>
        </div>



        <script src="<c:url value="/resources/js/controller.js" /> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
