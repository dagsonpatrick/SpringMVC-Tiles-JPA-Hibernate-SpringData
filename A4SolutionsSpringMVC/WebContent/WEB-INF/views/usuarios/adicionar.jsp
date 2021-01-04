<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:url var="actionAdicionar" value="/usuarios/adicionar"></c:url>
<main role="main" class="container">
<form:form action="${actionAdicionar}" method="post" modelAttribute="usuario">
	<div class="container">
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<h1>Cadastrar Usuário</h1>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Nome de Usuário:</label>
					<form:input path="username" cssClass="form-control"/>
					<form:errors path="username" cssStyle="color: red;"></form:errors>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Senha:</label>
					<form:password path="password" cssClass="form-control" />
					<form:errors path="password" cssStyle="color: red;"></form:errors>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Perfil:</label>
					<select name="role" class="form-control">
						<option value="ROLE_ADMIN">Administrador</option>
						<option value="ROLE_USER">Usuário Comun</option>
					</select>
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
