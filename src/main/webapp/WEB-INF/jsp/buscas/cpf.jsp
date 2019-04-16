<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por CPF">
    <section>
        <form id="busca_cpf" autocomplete="on">
            <p class="row">
                <label for="cpf">CPF</label>
                <input class="right" type="text" id="rg" autofocus="" placeholder="Digite seu CPF aqui">
                <input type="submit" value="Buscar">
            </p>
        </form>
    </section>
    <table border="2">
        <tbody>
            <tr>
                <td>Nome:</td>
                <td>E-mail:</td>
                <td>RG:</td>
                <td>Tipo Sanguíneo:</td>
            </tr>
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