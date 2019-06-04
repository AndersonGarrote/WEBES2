<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Gráfico de Peso">
    <jsp:attribute name="js">
        <c:if test="${param.estado != null}">
            <script>

                const urlParams = new URLSearchParams(window.location.search)

                $(document).ready(function() {
                    $('#form-filtro').collapse('hide')
                });

                const getEstado = urlParams.get('estado');

                let estado = document.querySelector("option[value='" + getEstado + "']");

                if(estado) {
                    estado.selected = true;
                }

                let sexo = document.querySelector("input[name=sexo]");

                sexo.checked = urlParams.get("sexo") === "on";

                let resultado = ${resultado}
                let data = []

                let binSize = 12;

                if(!sexo.checked) {

                    data = [
                        {
                            x: resultado.pesos.map(x => {
                                return x
                            }),
                            y: resultado.contagem,
                            xbins: {
                                size: binSize,
                                start: 30,
                                end: 200
                            },
                            histfunc: "sum",
                            type: 'histogram'
                        }
                    ]

                } else {

                    data = [
                        {
                            x: resultado.Feminino.pesos.map(x => {
                                return x
                            }),
                            y: resultado.Feminino.contagem,
                            xbins: {
                                size: binSize,
                                start: 30,
                                end: 200
                            },
                            histfunc: "sum",
                            type: 'histogram',
                            name: 'Feminino',
                            opacity: 0.75
                        },
                        {
                            x: resultado.Masculino.pesos.map(x => {
                                return x
                            }),
                            y: resultado.Masculino.contagem,
                            xbins: {
                                size: binSize,
                                start: 30,
                                end: 200
                            },
                            histfunc: "sum",
                            type: 'histogram',
                            name: 'Masculino',
                            opacity: 0.75
                        }
                    ]

                }

                var layout = {
                    title: "Gráfico de peso - " + (getEstado == "Todos" ? "Brasil" : getEstado),
                    xaxis: {
                        title: {
                            text: 'Peso (quilogramas)'
                        },
                        tickangle: -45,
                    },
                    yaxis: {
                        title: {
                            text: 'Número de pessoas'
                        },
                    },
                    barmode: "overlay",
                    bargroupgap: 0.5,
                }

                Plotly.newPlot("grafico", data, layout, { responsive: true })

                let grafico = document.querySelector("#grafico");
                grafico.scrollIntoView();

                let binSizeText = document.querySelector("#binSizeText");
                let binSizeSlider = document.querySelector("#binSizeSlider");

                binSizeSlider.oninput = function() {
                    binSizeText.value = this.value;
                    updateBinSize(this.value);
                }

                binSizeText.oninput = function() {
                    binSizeSlider.value = this.value;
                    updateBinSize(this.value);
                }

                function updateBinSize(binSize) {
                    data.forEach((dataset) => {
                        dataset.xbins.size = binSize;
                    })
                    Plotly.react("grafico", data, layout);
                }

                window.dispatchEvent(new Event('resize'))

            </script>
        </c:if>
    </jsp:attribute>
    <jsp:body>
        <div class="card my-2">
            <div class="card-header" data-toggle="collapse" href="#form-filtro" aria-expanded="true">
                Filtros
            </div>
            <div class="card-body collapse show" id="form-filtro">
                <form action="" type="get">
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
            </div>
        </div>
        <c:if test="${param.estado != null}">
        <div class="card my-2">
            <div class="card-body">
                <label for="binSizeText">Tamanho do agrupamento (em quilogramas):</label>
                <div class="row">
                    <div class="col-auto">
                        <input type="number" id="binSizeText" min="1" max="25" step="1" value="12">
                    </div>
                    <div class="col-auto">
                        1
                    </div>
                    <div class="col">
                        <input class="custom-range" type="range" id="binSizeSlider" min="1" max="25" step="1" value="12">
                    </div>
                    <div class="col-auto">
                        25
                    </div>
                </div>
            </div>
        </div>
        <div class="card my-2">
            <div id="grafico"></div>
        </div>
        </c:if>
    </jsp:body>
</t:base>
