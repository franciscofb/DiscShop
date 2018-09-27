<%--
  Created by IntelliJ IDEA.
   User: FFB
    Date: 9/15/2018
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Admin</h1>

            <p class="lead">Página do Administrador!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Bem-Vindo: ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/j_spring_security_logout" />">Logout</a>
            </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Lista de Ingressos</a>
        </h3>

        <p>Aqui você vê os ingressos cadastrados para venda!</p>

        <br><br>

        <h3>
            <a href="<c:url value="/admin/customer" />" >Clientes Cadastrados</a>
        </h3>

        <p>Aqui você as informações de clientes cadastrados</p>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

