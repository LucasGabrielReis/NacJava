<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title>Eletronicos</title>

    <spring:url value="/resources/css" var="css" />
    <spring:url value="/resource/js" var="js" />
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath" />
    
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
            <div class="col-md-12">
				
				<h1>Tipos De Eletronicos</h1>
				
				<p class="toolbar">
				
					<a class="create btn btn-default" href="${contextPath}/produto/new">Novo Produto</a>
	
					<span class="alert"></span>
				</p>
				
				<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<c:forEach items="${lista}" var="itemList">
							<tr>
								<td>${itemList.nome}</td>
								<td>${itemList.preco}</td>
								<td>${itemList.tipo}</td>	
								<td class="actions">
									<form action="XXXXXX" method="get">
										<a class="btn btn-success btn-xs" href="${contextPath}/eletronicos/${itemList.id}">Detalhes</a>
										<a class="btn btn-warning btn-xs" href="${contextPath}/eletronicos/update/${produto.id}">Editar</a>
										<input type="submit" value="Excluir" class="btn btn-danger btn-xs">
									</form>
								</td>
							</tr>
						</c:forEach>
                    </tbody>
				</table>
            </div>
        </div>
		<hr>
    </div>
    
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.min.js"></script>
</body>
</html>