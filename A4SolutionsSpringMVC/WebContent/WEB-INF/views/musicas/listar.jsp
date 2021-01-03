<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<h1>Músicas cadastradas</h1>
			</div>
		</div>
	</div>
	<table class="table">
		<thead>
			<th>ID</th>
			<th>Nome da Música</th>
			<th>Data Criação</th>
			<th>Nome do Álbum</th>
			<th>Ações</th>
		</thead>
		<tbody>
			<c:if test="${!empty musicas}">
				<c:forEach items="${musicas}" var="musica">
					<tr>
						<td>${musica.id}</td>
						<td>${musica.nome}</td>
						<td> <fmt:formatDate value="${musica.dataCriacao}" pattern="dd/MM/yyyy" timeZone="UTC"/> </td>
						<td>${musica.album.nome}</td>
						<td><a href="/a4solutions-spring-mvc/musicas/alterar/${musica.id}" class="btn btn-outline-primary">Alterar</a>
							| <a href="/a4solutions-spring-mvc/musicas/excluir/${musica.id}" class="btn btn-outline-danger">Excluir
						</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<a href="/a4solutions-spring-mvc/musicas/adicionar"	class="btn btn-outline-success">Nova Música</a>
			</div>
		</div>
	</div>
</div>