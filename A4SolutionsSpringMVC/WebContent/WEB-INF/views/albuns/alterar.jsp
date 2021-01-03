<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:url var="actionAlterar" value="/albuns/alterar"></c:url>

<form:form action="${actionAlterar}" method="post" modelAttribute="album">
	<div class="container">
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<h1>Alteração do Álbum "${album.nome}"</h1>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>ID:</label>
					<form:input path="id" cssClass="form-control" readonly="true"/>
				</div>
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Nome:</label>
					<form:input path="nome" cssClass="form-control"/>
					<form:errors path="nome" cssStyle="color: red;"></form:errors>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Ano de Lançamento:</label>
					<form:input path="anoDeLancamento" cssClass="form-control" />
					<form:errors path="anoDeLancamento" cssStyle="color: red;"></form:errors>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<input type="submit"  class="btn btn-outline-success" value="Salvar" />
				</div>
			</div>
		</div>
	</div>	
</form:form>
