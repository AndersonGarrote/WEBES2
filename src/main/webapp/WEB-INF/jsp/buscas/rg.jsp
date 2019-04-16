<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por RG">
    <section>
        <form id="busca_rg" autocomplete="on">
            <p class="row">
                <label for="rg">RG</label>
                <input class="right" type="text" id="rg" autofocus="" placeholder="Digite seu RG aqui">
                <input type="submit" value="Buscar">
            </p>
        </form>
    </section>
    <table border="2">
        <tbody>
            <tr>
                <td>Nome:</td>
                <td>CPF:</td>
                <td>E-mail:</td>
                <td>Tipo Sanguíneo:</td>
            </tr>
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