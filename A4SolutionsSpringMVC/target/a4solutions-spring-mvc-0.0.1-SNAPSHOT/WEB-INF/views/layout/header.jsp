<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #5e00a3;">

	<a class="navbar-brand" href="/a4solutions-spring-mvc/home/">Spring MVC</a>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="/a4solutions-spring-mvc/home/">Home
					<span class="sr-only">(current)</span>
				</a>
			</li>

			<sec:authorize access="isAuthenticated()">

				<sec:authentication property="principal" var="principal" />

				<li class="nav-item dropdown">
					<a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> �lbum 
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/a4solutions-spring-mvc/albuns/listar">Listar</a>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="/a4solutions-spring-mvc/albuns/adicionar">Cadastrar</a>
						</sec:authorize>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> M�sica 
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/a4solutions-spring-mvc/musicas/listar">Listar</a>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="/a4solutions-spring-mvc/musicas/adicionar">Cadastrar</a>
						</sec:authorize>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Usu�rios 
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/a4solutions-spring-mvc/usuarios/listar">Listar</a>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="/a4solutions-spring-mvc/usuarios/adicionar">Cadastrar</a>
						</sec:authorize>
					</div>
				</li>
				
				 
				<div class="col-md-9 mobile-hide">	
					 <input class="form-control" type="search" placeholder="Search"	aria-label="Search" id="txt-pesquisar">
				</div>
				<button class="btn btn-outline-success" id="btn-pesquisar">Search</button>
				 
				
				<li class="nav-item dropdown">
					<a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Bem-vindo, ${principal.username} 
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/a4solutions-spring-mvc/logout">Sair</a>
					</div>
				</li>

			</sec:authorize>

		</ul>
	</div>
</nav>