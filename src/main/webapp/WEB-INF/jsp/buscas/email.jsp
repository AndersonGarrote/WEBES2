<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por E-mail">
    <section>
        <form id="busca_email" autocomplete="on">
            <p class="row">
                <label for="email">E-mail</label>
                <input class="right" type="email" id="email" autofocus="" placeholder="Digite seu e-mail aqui">
                <input type="submit" value="Buscar">
            </p>
        </form>
    </section>
    <table border="2">
        <tbody>
            <tr>
                <td>Nome:</td>
                <td>CPF:</td>
                <td>RG:</td>
                <td>Tipo Sanguíneo:</td>
            </tr>
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