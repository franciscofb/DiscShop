<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Todos os produtos</h1>

            <p class="lead">Veja os todos os nossos eventos</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Foto</th>
                <th>Título</th>
                <th>Categoria</th>
                <th>Estado</th>
                <th>Preço</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <c:if test="${product.productStatus != \"Acabou\"}">
                    <tr>
                        <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                                 style="width:100%"/></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productStatus}</td>
                        <td>${product.productPrice} R$</td>
                        <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
