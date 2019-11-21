<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livro de Java, Android, Iphone, ruby, PHP e muito mais - Casa do Código.</title>
</head>
<body>
	<form action="/casadocodigo/produtos" method="post">
		<div>
			<label>Titulo</label>
			<input type="text" name="titulo">
			<form:errors path="produto.titulo"/>
		</div>
		<div>
			<label>Descrição</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
			<form:errors path="produto.descricao"/>
		</div>
		<div>
			<label>Páginas</label>
			<input type="text" name="paginas">
			<form:errors path="produto.paginas" />
		</div>
		
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco }</label>
				<input type="text" name="precos[${status.index}].valor">
				<input type="hidden"  name="precos[${status.index}].tipo" value="${tipoPreco}">
			</div>
		</c:forEach>
		
		<div>
			<label>Data de Lançamento</label>
			<input type="text" name="dataLancamento">
			<form:errors path="produto.dataLancamento"/>
		</div>
				
		<button type="submit">Cadastrar</button>
		
	</form>
</body>
</html>