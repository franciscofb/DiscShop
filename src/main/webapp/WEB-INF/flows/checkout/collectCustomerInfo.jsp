<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cliente</h1>

            <p class="lead">Detalhes dos Clientes</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

        <h3>Informações Básicas</h3>

        <div class="form-group">
            <label for="name">Nome</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Telefone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
        </div>

        <h3>Billing Address</h3>

        <div class="form-group">
            <label for="billingStreet">Rua</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Número</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Cidade</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">Estado</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">País</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">CEP</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <input type="submit" value="Próximo" class="btn btn-default" name="_eventId_customerInfoCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Cancelar</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
