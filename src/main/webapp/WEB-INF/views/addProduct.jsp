<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Novo Evento</h1>

            <p class="lead">Preencha corretamente para prosseguir</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Nome</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Categoria</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Show" />Show</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Teatro" />Teatro</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Cinema" />Cinema</label>
        </div>

        <div class="form-group">
            <label for="description">Descrição</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Preço</label>  <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Vendendo" />Vendendo</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Pré-Venda" />Pré-Venda</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Acabou" />Acabou</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Quantidade Restante</label>  <form:errors path="unitInStock"
                                                                         cssStyle="color: #ff0000;" />
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Envie uma foto</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancelar</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
