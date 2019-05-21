<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca avançada">
    <jsp:attribute name="js">
        <script>
            var urlParams = new URLSearchParams(window.location.search)

            if(urlParams.toString() === '') {
                document.getElementById('form-busca').classList.add('show');
            }

            const sort = urlParams.get('sort')
            const order = urlParams.get('order')

            var labels = document.getElementsByClassName('sort-label')

            for (let label of labels) {

                let name = label.dataset.name

                if (name == sort) {
                    label.setAttribute('data-order', order);
                }

                label.onclick = function (event) {


                    if (sort == name && order == null || order == 'asc') {
                        urlParams.set('order', 'desc')
                    } else {
                        urlParams.set('order', 'asc')
                    }

                    urlParams.set('sort', name)

                    window.location.search = urlParams.toString()
                }

            }

            urlParams.set('sort', 'cidade')
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="card my-2">
            <div class="card-header" data-toggle="collapse" href="#form-busca">
                Formulário de busca
            </div>
            <div class="card-body collapse" id="form-busca">
                <form action="" method="get">
                  <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="nome">Nome</label>
                        <input class="form-control" id="nome" type="text" name="nome" value="${param.nome}">
                      </div>
                      <div class="form-group col-md-3">
                        <label for="cidade">Cidade</label>
                        <input class="form-control" id="cidade" type="text" name="cidade" value="${param.cidade}">
                      </div>
                      <div class="form-group col-md-3">
                        <label for="estado">Estado</label>
                        <input class="form-control" id="estado" type="text" name="estado" value="${param.estado}">
                      </div>
                  </div>
                  <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="nome_do_pai">Nome do pai</label>
                        <input class="form-control" id="nome_do_pai" type="text" name="nomeDoPai" value="${param.nomeDoPai}">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="nome_da_mae">Nome da mãe</label>
                        <input class="form-control" id="nome_da_mae" type="text" name="nomeDaMae" value="${param.nomeDaMae}">
                      </div>
                    </div>
                    <button class="btn btn-dark my-2">
                        <i class="fas fa-search" title="Buscar" aria-hidden="true"></i> Buscar
                    </button>
                </form>
            </div>
        </div>
        <c:choose>
            <c:when test="${!pessoas.isEmpty()}">
                <t:pagination start="${startPage}" end="${endPage}" url="${url}" page="${pessoas}"></t:pagination>
                <table class="table table-bordered table-striped sortable">
                    <caption>Lista de cadastros</caption>
                    <thead>
                        <tr>
                            <th class="sort-label" data-name="nome">Nome</th>
                            <th class="sort-label" data-name="cpf">CPF</th>
                            <th class="sort-label" data-name="dataDeNascimento">Data de nascimento</th>
                            <th class="sort-label" data-name="cidade">Cidade</th>
                            <th class="sort-label" data-name="estado">Estado</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <c:forEach items="${pessoas.getContent()}" var="pessoa">
                        <tr>
                            <td>${pessoa.nome}</td>
                            <td>${pessoa.getCpf(true)}</td>
                            <td>${pessoa.getDataDeNascimento("dd/MM/yyyy")}</td>
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
                <t:pagination start="${startPage}" end="${endPage}" url="${url}" page="${pessoas}"></t:pagination>
            </c:when>
            <c:otherwise>
                <div class="alert alert-dark" role="alert">Nenhum cadastro encontrado!</div>
            </c:otherwise>
        </c:choose>
    </jsp:body>
</t:base>
