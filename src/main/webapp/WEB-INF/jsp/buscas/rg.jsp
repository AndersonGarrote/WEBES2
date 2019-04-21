<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por RG">

    <form id="busca_rg" autocomplete="on">
        <div class="input-group mb-3">
          <div class="input-group-prepend"><label class="input-group-text" id="rgtag" for="rg">RG: </label></div>
          <input class="form-control" aria-label="RG" aria-describedby="rgtag" type="text" id="rg" autofocus placeholder="00.000.000-0">
          <input class="btn btn-outline-primary" type="button" type="submit" value="Buscar">
        </div>
    </form>

    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>Nome:</th>
                <th>CPF:</th>
                <th>E-mail:</th>
                <th>Tipo Sanguíneo:</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><a href="visualizarCadastro.jsp">Carlos Silva Sauro</a></td>
                <td>555.555.555-55</td>
                <td>carlos@carlosmail.com</td>
                <td>O+</td>
            </tr>
            <tr>
                <td>Thiago Yussuki Uehara</td>
                <td>123.456.789-00</td>
                <td>thiago@uehara.com</td>
                <td>A+</td>
            </tr>
        </tbody>
    </table>
</t:base>
