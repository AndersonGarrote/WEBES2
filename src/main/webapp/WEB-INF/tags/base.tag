<%@ tag description="Base template" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="js" fragment="true" %>

<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
</head>

<body>
    <div class="fluid-container d-flex">
        <nav class="sidebar">
            <h3>
                <a href="/" class="text-center">Cadastro de<br>Pessoa Física</a>
            </h3>
            <hr>
            <ul>
                <li>Buscas
                    <ul>
                        <li><a href="/buscas/rg">Busca por RG</a></li>
                        <li><a href="/buscas/cpf">Busca por CPF</a></li>
                        <li><a href="/buscas/email">Busca por E-mail</a></li>
                        <li><a href="/buscas/avancada">Busca avançada</a></li>
                    </ul>
                </li>
                <hr>
                <li>Gráficos
                    <ul>
                        <li><a href="/graficos/altura">Altura</a></li>
                        <li><a href="/graficos/peso">Peso</a></li>
                        <li><a href="/graficos/sexo">Sexo</a></li>
                        <li><a href="/graficos/tipo-sanguineo">Tipo sanguíneo</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <main>
            <h1>${title}</h1>
            <div class="content">
                <jsp:doBody/>
            </div>
        </main>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.0.min.js"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <jsp:invoke fragment="js"/>
</body>

</html>