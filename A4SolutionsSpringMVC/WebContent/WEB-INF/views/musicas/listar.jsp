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
	
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<a href="/a4solutions-spring-mvc/musicas/adicionar"	class="btn btn-outline-success">Nova Música</a>
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
	
</div>

<script type="text/javascript">

	$(document).ready(function(){
		$('#btn-pesquisar').click(function(){
			var nomeMusica = $('#txt-pesquisar').val();
			
			$.ajax({
				method: 'GET',
				url: '/a4solutions-spring-mvc/musicas/porNome?nome='+ nomeMusica,
				success: function(data){
					$('#tbl-dados tbody > tr').remove();
					$.each(data, function(index, musica){
						
						$('#tbl-dados tbody').append(			
								'<tr>'+
									'<td>' + musica.id + '</td>' +
									'<td>' + musica.nome + '</td>' +
									'<td>' + musica.dataCriacao + '</td>' +
									'<td>' +
										'<a href="/a4solutions-spring-mvc/musicas/alterar/'+musica.id+'" class="btn btn-outline-primary">Alterar</a> ' +
										'<a href="/a4solutions-spring-mvc/musicas/excluir/'+musica.id+'" class="btn btn-outline-danger">Excluir</a>' +						
									'</td>' +
								'</tr>'
						);
						
					});
					
				},
				error: function(){
					alert('Houve um erro na requisição!');
				}
			});
		});
	});

</script>

