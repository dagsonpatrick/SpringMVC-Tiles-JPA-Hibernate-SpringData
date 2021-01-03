<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:url var="actionEditar" value="/musicas/alterar"></c:url>
<main role="main" class="container">
<form:form action="${actionEditar}" method="post" modelAttribute="musica">
	<div class="container">
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<h1>Edição da Música "${musica.nome}"</h1>
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
					<label>Data de Criação:</label>
					<form:input path="dataCriacao" cssClass="form-control" />
					<form:errors path="dataCriacao" cssStyle="color: red;"></form:errors>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Album</label>
					<form:select path="album.id" cssClass="form-control">
						<form:options items="${albuns}" itemLabel="nome" itemValue="id"/>
					</form:select>
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
</main>