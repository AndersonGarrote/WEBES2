<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráficos de Altura">
    <jsp:attribute name="js">
        <script>
            $(document).ready(function() {
                var x1 = [];
                var x2 = [];
                for (var i = 1; i < 500; i++) {
                    k = Math.random();
                    x1.push(Math.random() + 1);
                    x2.push(Math.random() + 1.1);
                }
                var trace1 = {
                    x: x1,
                    type: "histogram",
                    name: 'Masculino',
                    opacity: 0.5,
                    marker: {
                        color: 'green',
                    },
                };
                var trace2 = {
                    x: x2,
                    name: 'Feminino',
                    type: "histogram",
                    opacity: 0.6,
                    marker: {
                        color: 'red',
                    },
                };
                var data = [trace1, trace2];
                var layout = { barmode: "overlay" };
                Plotly.newPlot("myDiv", data, layout, {}, { showSendToCloud: true });
            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <form action="">
            <label for="estado">Estado</label>
            <select name="estado" id="estado">
                <option value="XX">Todos</option>
                <option value="AC">Acre</option>
                <option value="AL">Alagoas</option>
                <option value="AP">Amapá</option>
                <option value="AM">Amazonas</option>
                <option value="BA">Bahia</option>
                <option value="CE">Ceará</option>
                <option value="DF">Distrito Federal</option>
                <option value="ES">Espírito Santo</option>
                <option value="GO">Goiás</option>
                <option value="MA">Maranhão</option>
                <option value="MT">Mato Grosso</option>
                <option value="MS">Mato Grosso do Sul</option>
                <option value="MG">Minas Gerais</option>
                <option value="PA">Pará</option>
                <option value="PB">Paraíba</option>
                <option value="PR">Paraná</option>
                <option value="PE">Pernambuco</option>
                <option value="PI">Piauí</option>
                <option value="RJ">Rio de Janeiro</option>
                <option value="RN">Rio Grande do Norte</option>
                <option value="RS">Rio Grande do Sul</option>
                <option value="RO">Rondônia</option>
                <option value="RR">Roraima</option>
                <option value="SC">Santa Catarina</option>
                <option value="SP">São Paulo</option>
                <option value="SE">Sergipe</option>
                <option value="TO">Tocantins</option>
            </select>
            <label for="sexo">Separar por sexo</label>
            <input type="checkbox" name="sexo" id="sexo">
            <input type="submit" value="Gerar gráfico">
        </form>
        <div id="myDiv"></div>
    </jsp:body>
</t:base>