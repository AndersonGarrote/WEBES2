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

            $(document).ready(function() {
                $('.page-item').click(function() {
                    $('.page-item').removeClass('active');
                    $(this).addClass("active");
                });
            });
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
            <c:when test="${!pessoas.isEmpty()}">
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
                    <c:forEach items="${pessoas}" var="pessoa">
                        <tr>
                            <td>${pessoa.nome}</td>
                            <td>${pessoa.cpf}</td>
                            <td>${pessoa.dataDeNascimento}</td>
                            <td>${pessoa.cidade}</td>
                            <td>${pessoa.estado}</td>
                            <td>
                                <a class="btn btn-dark" href="/buscas/id?id=${pessoa.id}">
                                    <span class="oi oi-eye"></span> Visualizar
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
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