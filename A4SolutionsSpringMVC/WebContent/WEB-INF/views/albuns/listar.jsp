<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<h1>Álbuns cadastrados</h1>
			</div>
		</div>
	</div>
	<table class="table">
		<thead>
			<th>ID</th>
			<th>Nome do Álbum</th>
			<th>Ano de Lançamento</th>
			<th>Ações</th>
		</thead>
		<tbody>
			<c:if test="${!empty albuns}">
				<c:forEach items="${albuns}" var="album">
					<tr>
						<td>${album.id}</td>
						<td>${album.nome}</td>
						<td>${album.anoDeLancamento}</td>
						<td><a href="/a4solutions-spring-mvc/albuns/alterar/${album.id}" class="btn btn-outline-primary">Alterar</a>
							| <a href="/a4solutions-spring-mvc/albuns/excluir/${album.id}" class="btn btn-outline-danger">Excluir
						</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<a href="/a4solutions-spring-mvc/albuns/adicionar"	class="btn btn-outline-success">Novo Álbum</a>
			</div>
		</div>
	</div>
</div>