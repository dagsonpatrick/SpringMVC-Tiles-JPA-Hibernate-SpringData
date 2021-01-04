<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<h1>Usuários cadastrados</h1>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<a href="/a4solutions-spring-mvc/usuarios/adicionar"	class="btn btn-outline-success">Cadastrar Usuário</a>
			</div>
		</div>
	</div>
	
	<table class="table">
		<thead>
			<th>ID</th>
			<th>Nome de Usuário</th>
			<th>Role</th>
		</thead>
		<tbody>
			<c:if test="${!empty usuarios}">
				<c:forEach items="${usuarios}" var="usuario">
					<tr>
						<td>${usuario.id}</td>
						<td>${usuario.username}</td>
						<td>${usuario.role}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	
</div>



