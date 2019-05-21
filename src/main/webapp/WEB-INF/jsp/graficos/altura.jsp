<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráfico de Altura">
    <jsp:attribute name="js">
        <c:if test="${param.estado != null}">
            <script>

                const urlParams = new URLSearchParams(window.location.search)

                let estado = document.querySelector("option[value='" + urlParams.get('estado') + "']");

                if(estado) {
                    estado.selected = true;
                }

                let sexo = document.querySelector("input[name=sexo]");

                sexo.checked = urlParams.get("sexo") === "on";

                let resultado = ${resultado}
                let data = []

                if(!sexo.checked) {

<<<<<<< HEAD
                    data = [
                        {
                            x: resultado.alturas.map(x => {
                                return x/100
                            }),
                            y: resultado.contagem,
                            xbins: {
                                size: 0.05,
                                start: 1.00,
                                end: 2.00
                            },
                            histfunc: "sum",
                            type: 'histogram'
                        }
                    ]

                } else {

                    data = [
                        {
                            x: resultado.Feminino.alturas.map(x => {
                                return x/100
                            }),
                            y: resultado.Feminino.contagem,
                            xbins: {
                                size: 0.05,
                                start: 1.00,
                                end: 2.00
                            },
                            histfunc: "sum",
                            type: 'histogram',
                            name: 'Feminino',
                            opacity: 0.75
                        },
                        {
                            x: resultado.Masculino.alturas.map(x => {
                                return x/100
                            }),
                            y: resultado.Masculino.contagem,
                            xbins: {
                                size: 0.05,
                                start: 1.00,
                                end: 2.00
                            },
                            histfunc: "sum",
                            type: 'histogram',
                            name: 'Masculino',
                            opacity: 0.75
                        }
                    ]

                }
=======
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
>>>>>>> 8445ef2912e238c3ffdf474bfbd1b1aaa50362ec

                var layout = {
                    title: "Gráfico de altura",
                    xaxis: {
                        tickangle: -45,
                        tickformat: '.2f'
                    },
                    barmode: "overlay"
                }

                Plotly.newPlot("grafico", data, layout, { responsive: true })

                window.dispatchEvent(new Event('resize'))

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
            <div class="form-check my-2">
                <input class="form-check-input" type="checkbox" name="sexo" id="sexo">
                <label for="sexo" class="form-check-label">Separar por sexo</label>
            </div>
            <input class="btn btn-dark my-2" type="submit" value="Gerar gráfico" id="submit">
        </form>
        <div id="grafico"></div>
    </jsp:body>
</t:base>
