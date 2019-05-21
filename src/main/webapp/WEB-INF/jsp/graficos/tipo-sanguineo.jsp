<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráfico de Tipo Sanguíneo">
    <jsp:attribute name="js">
        <c:if test="${regiao != null}">
            <script>

            const urlParams = new URLSearchParams(window.location.search)

            let estado = document.querySelector("option[value='" + urlParams.get('estado') + "']");

            if(estado) {
                estado.selected = true;
            }
            
            var values=[${ABp},${ABn},${Ap},${An},${Bp},${Bn},${Op},${On}];
            var regiao="${regiao}";

            $(document).ready(function() {
                if(! values.every(elem => elem == 0)){

                    var labels = [ 'AB+', 'AB-', 'A+', 'A-', 'B+', 'B-', 'O+', 'O-'];

                    var data = [{
                        values: values,
                        labels: labels,
                        type: 'pie',
                    }]

                    var layout = {
                        title: "Gráfico de Tipo Sanguíneo - " + regiao,
                    };

                    Plotly.newPlot('grafico', data, layout, {responsive: true});

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
        <form action="">
            <label for="estado">Estado</label>
            <select class="form-control" name="estado" id="estado">
                <option value="Todos">Todos</option>
                <option value="Acre">Acre</option>
                <option value="Alagoas">Alagoas</option>
                <option value="Amapá">Amapá</option>
                <option value="Amazonas">Amazonas</option>
                <option value="Bahia">Bahia</option>
                <option value="Ceará">Ceará</option>
                <option value="Distrito Federal">Distrito Federal</option>
                <option value="Espírito Santo">Espírito Santo</option>
                <option value="Goiás">Goiás</option>
                <option value="Maranhão">Maranhão</option>
                <option value="Mato Grosso">Mato Grosso</option>
                <option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
                <option value="Minas Gerais">Minas Gerais</option>
                <option value="Pará">Pará</option>
                <option value="Paraíba">Paraíba</option>
                <option value="Paraná">Paraná</option>
                <option value="Pernambuco">Pernambuco</option>
                <option value="Piauí">Piauí</option>
                <option value="Rio de Janeiro">Rio de Janeiro</option>
                <option value="Rio Grande do Norte">Rio Grande do Norte</option>
                <option value="Rio Grande do Sul">Rio Grande do Sul</option>
                <option value="Rondônia">Rondônia</option>
                <option value="Roraima">Roraima</option>
                <option value="Santa Catarina">Santa Catarina</option>
                <option value="São Paulo">São Paulo</option>
                <option value="Sergipe">Sergipe</option>
                <option value="Tocantins">Tocantins</option>
            </select>
            <input class="btn btn-dark my-2" type="submit" value="Gerar gráfico" id="submit">
        </form>
        <div id="grafico"></div>

    </jsp:body>
</t:base>
