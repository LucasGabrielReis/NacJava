<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Detalhes</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/sresources/js" var="js"/>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/eletronicos">Eletronicos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Eletronicos</h2>
					
						<div class="form-group">
							<label class="control-label" for="id">ID:</label>
							<b>${eletronico.id}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="">Tipo:</label>
							<label class="label label-default">${eletronico.tipo}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<label class="label label-default">${eletronico.nome}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="descricao">Descricao:</label>
							<label class="label label-default">${eletronico.descricao}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Preco:</label>
							<label class="label label-default">${eletronico.preco}</label>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/eletronicos">Voltar</a><br>
                </div>
            </div>
        </div>
    </div>
    
    <script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.min.js"></script>

</body>
</html>