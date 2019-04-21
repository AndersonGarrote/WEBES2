<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por CPF">
        <form id="busca_cpf" autocomplete="on">
          <div class="input-group mb-3">
                <div class="input-group-prepend"><label class="input-group-text" id="cpftag" for="cpf">CPF: </label></div>
                <input class="form-control" aria-label="CPF" aria-describedby="cpftag" type="text" id="cpf" autofocus="" placeholder="000.000.000-00">
                <input class="btn btn-outline-primary" type="button" type="submit" value="Buscar">
          </div>
        </form>
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>Nome:</th>
                <th>E-mail:</th>
                <th>RG:</th>
                <th>Tipo Sanguíneo:</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><a href="visualizarCadastro.jsp">Carlos Silva Sauro</a></td>
                <td>carlos@carlosmail.com</td>
                <td>55.555.555-5</td>
                <td>O+</td>
            </tr>
            <tr>
                <td>Thiago Yussuki Uehara</td>
                <td>thiago@uehara.com</td>
                <td>12.345.678-9</td>
                <td>A+</td>
            </tr>
        </tbody>
    </table>
</t:base>
