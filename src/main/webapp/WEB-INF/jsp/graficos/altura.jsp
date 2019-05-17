<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráfico de Altura">
    <jsp:attribute name="js">
        <script>
            $(document).ready(function() {

                $("#submit").click(function(e) {

                    e.preventDefault();

                    var sexo = $('#sexo').is(':checked');

                    var labels = sexo ? ['Masculino', 'Feminino'] : ['Altura'];

                    var data = [];

                    labels.forEach((label) => {

                        values = [];

                        for(i = 0; i < 10; i++) {
                            values.push(Math.random() + 1);

                        }

                        data.push({
                            y: values,
                            type: 'bar',
                            name: label,
                        });

                    });

                    var layout = {
                        title: "Gráfico de altura",
                        barmode: "group"
                    };

                    Plotly.newPlot("grafico", data, layout, { responsive: true });

                    window.dispatchEvent(new Event('resize'));

                });

            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <form action="">
            <label for="estado">Estado</label>
            <select class="form-control" name="estado" id="estado">
                <option value="Todos">Todos</option>
                <option value="Acre">Acre</option>
                <option value="Alagoas">Alagoas</option>
                <option value="Amapa">Amapá</option>
                <option value="Amazonas">Amazonas</option>
                <option value="Bahia">Bahia</option>
                <option value="Ceara">Ceará</option>
                <option value="Distrito Federal">Distrito Federal</option>
                <option value="Espirito Santo">Espírito Santo</option>
                <option value="Goias">Goiás</option>
                <option value="Maranhao">Maranhão</option>
                <option value="Mato Grosso">Mato Grosso</option>
                <option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
                <option value="Minas Gerais">Minas Gerais</option>
                <option value="Para">Pará</option>
                <option value="Paraiba">Paraíba</option>
                <option value="Parana">Paraná</option>
                <option value="Pernambuco">Pernambuco</option>
                <option value="Piaui">Piauí</option>
                <option value="Rio de Janeiro">Rio de Janeiro</option>
                <option value="Rio Grande do Norte">Rio Grande do Norte</option>
                <option value="Rio Grande do Sul">Rio Grande do Sul</option>
                <option value="Rondonia">Rondônia</option>
                <option value="Roraima">Roraima</option>
                <option value="Santa Catarina">Santa Catarina</option>
                <option value="Sao Paulo">São Paulo</option>
                <option value="Sergipe">Sergipe</option>
                <option value="Tocantins">Tocantins</option>
            </select>
            <div class="form-check my-2">
                <input class="form-check-input" type="checkbox" name="sexo" id="sexo">
                <label for="sexo" class="form-check-label">Separar por sexo</label>
            </div>
            <input class="btn btn-dark my-2" type="submit" value="Gerar gráfico" id="submit">
        </form>
        <div id="grafico"></div>
    </jsp:body>
</t:base>
