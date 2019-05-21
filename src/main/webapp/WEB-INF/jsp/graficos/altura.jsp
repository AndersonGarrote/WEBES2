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

                    //labels.forEach((label) => {
                    if(sexo){
                        data.push({
                            y: valuesF,
                            x:[1.00,1.10,1.20,1.30,1.40,1.50,1.60,1.70,1.80,1.90,2.00],
                            type: 'bar',
                            name: 'Masculino',
                        });

                        data.push({
                            y: valuesM,
                            type: 'bar',
                            name: 'Feminino',
                        });
                    }else{
                      data.push({
                          y: values,
                          type: 'bar',
                          name: 'Feminino',
                      });
                    }
                    //});

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
        <form action="" type="get">
            <label for="estado">Estado</label>
            <select class="form-control" name="estado" id="estado">
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
            <div class="form-check my-2">
                <input class="form-check-input" type="checkbox" name="sexo" id="sexo">
                <label for="sexo" class="form-check-label">Separar por sexo</label>
            </div>
            <input class="btn btn-dark my-2" type="submit" value="Gerar gráfico" id="submit">
        </form>

        <c:choose>
          <c:when test="${colunas != null}">
            <script>
              var values=${colunas};
            </script>
          </c:when>
          <c:when test="${colunasF != null}">
            <script>
              var valuesF=${colunasF};
              var valuesM=${colunasM};
            </script>
          </c:when>
          <c:otherwise>
          </c:otherwise>
        </c:choose>

        <div id="grafico"></div>


    </jsp:body>
</t:base>
