<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<h1>Álbuns cadastrados</h1>
			</div>
		</div>
		
	</div>
	
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<a href="/a4solutions-spring-mvc/albuns/adicionar"	class="btn btn-outline-success">Novo Álbum</a>
			</div>
		</div>
	</div>

	<table class="table" id="tbl-dados">
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
							| <a href="/a4solutions-spring-mvc/albuns/excluir/${album.id}" class="btn btn-outline-danger">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	
</div>

<script type="text/javascript">

	$(document).ready(function(){
		$('#btn-pesquisar').click(function(){
			var nomeAlbum = $('#txt-pesquisar').val();
			
			$.ajax({
				method: 'GET',
				url: '/a4solutions-spring-mvc/albuns/porNome?nome='+ nomeAlbum,
				success: function(data){
					$('#tbl-dados tbody > tr').remove();
					$.each(data, function(index, album){
						
						$('#tbl-dados tbody').append(			
								'<tr>'+
									'<td>' + album.id + '</td>' +
									'<td>' + album.nome + '</td>' +
									'<td>' + album.anoDeLancamento + '</td>' +
									'<td>' +
										'<a href="/a4solutions-spring-mvc/albuns/alterar/'+album.id+'" class="btn btn-outline-primary">Alterar</a> ' +
										'<a href="/a4solutions-spring-mvc/albuns/excluir/'+album.id+'" class="btn btn-outline-danger">Excluir</a>' +						
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
