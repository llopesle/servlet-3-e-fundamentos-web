<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<br /><br/>
	<c:if test="${not empty usuarioLogado}">
    	Voce esta logado como ${usuarioLogado.email}<br/><br/>
	</c:if>
	<form action="executa" method="POST">
		<input type="hidden" name="tarefa" value="NovaEmpresa" />
		Nome: <input type="text" name="nome" /> <input type="submit" value="Enviar" />
	</form>
	<form action="login" method="post">
		Email: <input type="text" name="email" /> Senha: <input
			type="password" name="senha" /> <input type="submit" value="Login" />
	</form>
	<form action="executa" method="POST">
		<input type="hidden" name="tarefa" value="BuscaEmpresa" />
		<input type="text" name="filtro" /> <input type="submit" value="Buscar" />
	</form>
	<form action="executa" method="post">
		<input type="hidden" name="tarefa" value="Logout" />
		<input type="submit" value="Logout" />
	</form>

</body>
</html>