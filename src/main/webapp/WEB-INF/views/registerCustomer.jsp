<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cadastro</h1>

            <p class="lead">Preencha as informações:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">
        <div class="row">
            <div class="col-md-4">
                <h3>Informações Básicas</h3>

                <div class="form-group">
                    <label for="name">Nome</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
                    <form:input path="customerName" id="name" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                        path="customerEmail" cssStyle="color: #ff0000"/>
                    <form:input path="customerEmail" id="email" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="phone">Telefone</label>
                    <form:input path="customerPhone" id="phone" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="username">Login</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                        path="username" cssStyle="color: #ff0000"/>
                    <form:input path="Username" id="username" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="password">Senha</label><form:errors path="password" cssStyle="color: #ff0000"/>
                    <form:password path="password" id="password" class="form-Control"/>
                </div>
            </div>
            <div class="col-md-4">
                <h3>Endereço de Cobrança</h3>

                <div class="form-group">
                    <label for="billingStreet">Rua</label>
                    <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingApartmentNumber">Número</label>
                    <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingCity">Cidade</label>
                    <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingState">Estado</label>
                    <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingCountry">País</label>
                    <form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="billingZip">CEP</label>
                    <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
                </div>
            </div>
            <div class="col-md-4">
                <h3>Endereço de Envio</h3>

                <div class="form-group">
                    <label for="shippingStreet">Rua</label>
                    <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="shippingApartmentNumber">Número</label>
                    <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="shippingCity">Cidade</label>
                    <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="shippingState">Estado</label>
                    <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="shippingCountry">País</label>
                    <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="shippingZip">CEP</label>
                    <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
                </div>

                <br><br>
                <input type="submit" value="submit" class="btn btn-default">
                <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
                </form:form>
            </div>
        </div>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
