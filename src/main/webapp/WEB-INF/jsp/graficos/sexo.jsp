<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráfico de Sexo">

    <jsp:attribute name="js">
        <c:if test="${masc != null}">
            <script>
            var masculino=${masc};
            var feminino=${femi};
            var regiao="${regiao}";

            $(document).ready(function() {
                if(masculino > 0 || feminino > 0){
                    var labels = ['Masculino', 'Feminino'];

                    var values = [masculino , feminino];

                    var data = [{
                        values: values,
                        labels: labels,
                        type: 'pie',
                    }]

                    var layout = {
                        title: "Gráfico de Sexo - " + regiao,
                    };

                    Plotly.newPlot("grafico", data, layout, { responsive: true });

                    window.dispatchEvent(new Event('resize'));
                }else{
                    $("#grafico").html("Não foram encontrados dados com os parâmetros recebidos!");
                    $("#grafico").addClass("alert alert-dark");
                }

            });
            </script>
        </c:if>
    </jsp:attribute>

    <jsp:body>
        <form id="form" action="" method="get">
            <label for="estado">Estado</label>
            <select class="form-control" name="estado" id="estado" value="${param.estado}">
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
            <input class="btn btn-dark my-2" type="submit" value="Gerar gráfico" id="submit">
        </form>
        <div id="grafico"></div>

    </jsp:body>
</t:base>
