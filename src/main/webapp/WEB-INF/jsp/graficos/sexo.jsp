<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráficos de Sexo">
    <jsp:attribute name="js">
        <script>
            $(document).ready(function() {

                $("#submit").click(function(e) {

                    e.preventDefault();

                    var labels = ['Masculino', 'Feminino'];

                    var values = [];

                    labels.forEach(() => {
                        values.push(Math.floor(Math.random() * 100) + 1);
                    });

                    var data = [{
                        values: values,
                        labels: labels,
                        type: 'pie',
                    }]

                    Plotly.newPlot("myDiv", data);
                });

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
            <input type="submit" value="Gerar gráfico" id="submit">
        </form>
        <div id="myDiv"></div>
    </jsp:body>
</t:base>