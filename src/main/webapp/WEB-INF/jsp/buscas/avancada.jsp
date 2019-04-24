<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca avançada">
    <jsp:attribute name="js">
        <script>
            const getCellValue = (tr, idx) => tr.children[idx].innerText || tr.children[idx].textContent;

            const comparer = (idx, asc) => (a, b) => ((v1, v2) =>
                v1 !== '' && v2 !== '' && !isNaN(v1) && !isNaN(v2) ? v1 - v2 : v1.toString().localeCompare(v2)
                )(getCellValue(asc ? a : b, idx), getCellValue(asc ? b : a, idx));

            // do the work...
            document.querySelectorAll('th').forEach(th => th.addEventListener('click', (() => {
            const table = th.closest('table');
            const tbody = table.querySelector('tbody');
            Array.from(tbody.querySelectorAll('tr'))
                .sort(comparer(Array.from(th.parentNode.children).indexOf(th), this.asc = !this.asc))
                .forEach(tr => tbody.appendChild(tr) );
            })));
        </script>
    </jsp:attribute>
    <jsp:body>
        <form action="" method="get">
            <label for="nome">Nome</label>
            <input class="form-control" id="nome" type="text" name="nome" value="${param.nome}">
            <label for="nome_do_pai">Nome do pai</label>
            <input class="form-control" id="nome_do_pai" type="text" name="nomeDoPai" value="${param.nomeDoPai}">
            <label for="nome_da_mae">Nome da mãe</label>
            <input class="form-control" id="nome_da_mae" type="text" name="nomeDaMae" value="${param.nomeDaMae}">
            <label for="cidade">Cidade</label>
            <input class="form-control" id="cidade" type="text" name="cidade" value="${param.cidade}">
            <label for="estado">Estado</label>
            <input class="form-control" id="estado" type="text" name="estado" value="${param.estado}">
            <button class="btn btn-dark my-2">
                <span class="oi oi-magnifying-glass" title="Buscar" aria-hidden="true"></span> Buscar
            </button>
        </form>
        <c:choose>
            <c:when test="${pessoas != null}">
                <table class="table table-bordered table-striped sortable">
                    <caption>Lista de cadastros</caption>
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>CPF</th>
                            <th>Data de nascimento</th>
                            <th>Cidade</th>
                            <th>Estado</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tr>
                        <td>David Bezerra Galvão</td>
                        <td>420.445.808-45</td>
                        <td>27/06/1924</td>
                        <td>Furtado do Norte</td>
                        <td>SE</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Daniela Garcia</td>
                        <td>910.882.537-84</td>
                        <td>27/05/1924</td>
                        <td>Porto Constância</td>
                        <td>SE</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>David Vicente Matos</td>
                        <td>889.625.763-84</td>
                        <td>01/03/1956</td>
                        <td>Aaron do Leste</td>
                        <td>RN</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Mia Maia Godói Jr.</td>
                        <td>755.099.275-42</td>
                        <td>02/11/1943</td>
                        <td>São Emílio</td>
                        <td>GO</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Emiliano Anderson Serra</td>
                        <td>226.099.691-47</td>
                        <td>30/03/1994</td>
                        <td>Rocha do Sul</td>
                        <td>BA</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Ashley Sales Prado Sobrinho</td>
                        <td>154.873.887-50</td>
                        <td>09/11/1969</td>
                        <td>Padrão d&#39;Oeste</td>
                        <td>SP</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Pablo Mascarenhas</td>
                        <td>535.526.371-25</td>
                        <td>13/08/1971</td>
                        <td>Natal do Sul</td>
                        <td>PE</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Adriano David de Oliveira</td>
                        <td>073.954.354-78</td>
                        <td>02/05/1961</td>
                        <td>São Gabriel</td>
                        <td>SC</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Joana Sophie Montenegro</td>
                        <td>050.468.426-45</td>
                        <td>29/06/1955</td>
                        <td>Porto Catarina do Norte</td>
                        <td>DF</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Christopher Andres Paes</td>
                        <td>654.459.078-99</td>
                        <td>18/07/1954</td>
                        <td>Santa Carlos do Norte</td>
                        <td>AP</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Mel Duarte</td>
                        <td>317.163.103-26</td>
                        <td>16/09/1932</td>
                        <td>Rocha d&#39;Oeste</td>
                        <td>DF</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Joana Azevedo Jr.</td>
                        <td>216.212.787-35</td>
                        <td>18/12/1964</td>
                        <td>Vila João</td>
                        <td>MG</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Suzana Barros Batista</td>
                        <td>640.746.924-49</td>
                        <td>09/05/1952</td>
                        <td>Galvão do Sul</td>
                        <td>PB</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Paulo Evandro Ramos</td>
                        <td>842.421.513-30</td>
                        <td>03/02/1974</td>
                        <td>Porto Gustavo</td>
                        <td>SE</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Andrea Bonilha</td>
                        <td>513.734.220-33</td>
                        <td>05/01/1999</td>
                        <td>Leon do Leste</td>
                        <td>PA</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Valentina Casanova Neto</td>
                        <td>596.153.570-30</td>
                        <td>18/01/1930</td>
                        <td>Santa Luciano</td>
                        <td>BA</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Paulo Christopher Vale</td>
                        <td>804.352.502-13</td>
                        <td>03/04/1990</td>
                        <td>Vila Miguel</td>
                        <td>SP</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Ariadna Azevedo</td>
                        <td>843.151.714-09</td>
                        <td>27/02/1944</td>
                        <td>Uchoa do Norte</td>
                        <td>DF</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Rebeca Serra Sobrinho</td>
                        <td>762.958.296-00</td>
                        <td>06/11/1933</td>
                        <td>Porto Ricardo do Leste</td>
                        <td>RO</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Hugo Giovane Fidalgo Filho</td>
                        <td>024.633.013-92</td>
                        <td>06/08/1985</td>
                        <td>Cortês d&#39;Oeste</td>
                        <td>ES</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Violeta Ortega Cortês Filho</td>
                        <td>309.625.160-66</td>
                        <td>22/08/1954</td>
                        <td>João do Sul</td>
                        <td>RN</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Luana Juliana Bittencourt</td>
                        <td>758.088.950-14</td>
                        <td>18/07/1943</td>
                        <td>Santa Helena do Sul</td>
                        <td>GO</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Gabriela Assunção Neto</td>
                        <td>662.013.265-02</td>
                        <td>26/06/1993</td>
                        <td>Vila Ariadna do Norte</td>
                        <td>AL</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Agustina Paes</td>
                        <td>917.321.379-94</td>
                        <td>08/01/1970</td>
                        <td>Santa Felipe do Sul</td>
                        <td>SC</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Isabel das Dores Escobar Filho</td>
                        <td>933.096.270-04</td>
                        <td>04/10/1992</td>
                        <td>Alonso do Sul</td>
                        <td>AP</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Ivan Rosa Leal Jr.</td>
                        <td>966.526.921-63</td>
                        <td>29/11/1958</td>
                        <td>Maldonado do Norte</td>
                        <td>SC</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Vitória Fontes</td>
                        <td>040.512.561-54</td>
                        <td>26/03/1964</td>
                        <td>Leandro do Leste</td>
                        <td>PR</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Regina Camacho Neto</td>
                        <td>684.992.245-98</td>
                        <td>06/06/1971</td>
                        <td>Noel do Leste</td>
                        <td>AM</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Fernando Queirós Aragão Filho</td>
                        <td>205.679.019-04</td>
                        <td>12/09/1968</td>
                        <td>Máximo do Norte</td>
                        <td>MT</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Leonardo Campos Neto</td>
                        <td>899.463.609-93</td>
                        <td>17/04/1962</td>
                        <td>Santa Paulina do Sul</td>
                        <td>RN</td>
                        <td>
                            <a class="btn btn-dark" href="/buscas/id?id=ID">
                                <span class="oi oi-eye"></span> Visualizar
                            </a>
                        </td>
                    </tr>
                </table>
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">Anterior</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Próxima</a></li>
                    </ul>
                </nav>
            </c:when>
            <c:otherwise>

            </c:otherwise>
        </c:choose>
    </jsp:body>
</t:base>