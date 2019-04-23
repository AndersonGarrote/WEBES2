<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráficos de Peso">
    <jsp:attribute name="js">
        <script>
            $(document).ready(function() {

                $("#submit").click(function(e) {

                    e.preventDefault();

                    var sexo = $('#sexo').is(':checked');

                    var labels = sexo ? ['Masculino', 'Feminino'] : ['Peso'];

                    var data = [];

                    labels.forEach((label) => {

                        values = [];

                        for(i = 0; i < 100; i++) {
                            values.push(Math.floor(Math.random() * 100) + 30);
                        }

                        data.push({
                            x: values,
                            type: 'histogram',
                            name: label,
                            opacity: 0.75,
                        });

                    });

                    var layout = { barmode: "overlay" };

                    Plotly.newPlot("myDiv", data, layout);

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
            <label for="sexo">Separar por sexo</label>
            <input type="checkbox" name="sexo" id="sexo">
            <input type="submit" value="Gerar gráfico" id="submit">
        </form>
        <div id="myDiv"></div>
    </jsp:body>
</t:base>