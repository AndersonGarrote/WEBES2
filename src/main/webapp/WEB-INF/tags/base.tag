<%@ tag description="Base template" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="js" fragment="true" %>

<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/font-awesome/css/all.css">
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
    <script src="/js/jquery-3.4.0.min.js"></script>
    <script src="/js/bootstrap/popper.min.js"></script>
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <script src="/js/plotly/plotly-latest.min.js"></script>
    <script src="/js/plotly/plotly-locale-pt-br-latest.js"></script>
    <script>Plotly.setPlotConfig({locale: 'pt-BR'})</script>
    <script src="/js/jquerymask/jquery.mask.min.js"></script>
    <jsp:invoke fragment="js"/>
</body>

</html>