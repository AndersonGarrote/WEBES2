<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por E-mail">

    <form id="busca_email" autocomplete="on">
        <div class="input-group mb-3">
            <div class="input-group-prepend"><label class="input-group-text" id="emailtag" for="email">E-mail: </label></div>
            <input class="form-control" aria-label="E-mail" aria-describedby="emailtag" type="email" id="email" autofocus placeholder="exemplo@email.com">
            <input class="btn btn-outline-primary" type="button" type="submit" value="Buscar">
        </div>
    </form>

    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>Nome:</th>
                <th>CPF:</th>
                <th>RG:</th>
                <th>Tipo Sanguíneo:</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><a href="visualizarCadastro.jsp">Carlos Silva Sauro</a></td>
                <td>555.555.555-55</td>
                <td>55.555.555-5</td>
                <td>O+</td>
            </tr>
            <tr>
                <td>Thiago Yussuki Uehara</td>
                <td>123.456.789-00</td>
                <td>12.345.678-9</td>
                <td>A+</td>
            </tr>
        </tbody>
    </table>
</t:base>
