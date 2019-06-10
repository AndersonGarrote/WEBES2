<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por CPF">
    <jsp:attribute name="js">
        <script>
            function TestaCPF(strCPF) {

                var Soma = 0;
                var Resto;

                Soma = 0;

                if (strCPF == "00000000000") return false;

                for (i = 1; i <= 9; i++) Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (11 - i);

                Resto = (Soma * 10) % 11;

                if ((Resto == 10) || (Resto == 11)) Resto = 0;
                if (Resto != parseInt(strCPF.substring(9, 10))) return false;

                Soma = 0;

                for (i = 1; i <= 10; i++) Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (12 - i);

                Resto = (Soma * 10) % 11;

                if ((Resto == 10) || (Resto == 11)) Resto = 0;
                if (Resto != parseInt(strCPF.substring(10, 11))) return false;
                return true;

            }

            $('[name=cpf]').bind('input', function() {

                var cpf = $(this).val();

                cpf = cpf.replace(/[^0-9]/g,'');

                if(!TestaCPF(cpf)) {
                    this.setCustomValidity('CPF inválido');
                } else {
                    this.setCustomValidity('');
                }
            });

        </script>
    </jsp:attribute>
    <jsp:body>
    <form id="form-cpf" type="get" action="" autocomplete="on">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" id="cpf-label" for="cpf">CPF:</label>
            </div>
            <input class="form-control" aria-label="CPF" aria-describedby="cpf-label" type="text" id="cpf" name="cpf" autofocus="" placeholder="000.000.000-00" data-mask="000.000.000-00" value="${param.cpf}" required>
            <div class="input-group-append">
                <button class="btn btn-dark">
                    <i class="fas fa-search" title="Buscar" aria-hidden="true"></i> Buscar
                </button>
            </div>
        </div>
    </form>
    <c:choose>
        <c:when test="${pessoa != null}">
            <c:choose>
                <c:when test="${pessoa.isPresent()}">
                    <t:ficha pessoa="${pessoa.get()}"></t:ficha>
                </c:when>
                <c:otherwise>
                    <div class="alert alert-dark" role="alert">O CPF fornecido não está cadastrado!</div>
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
        </c:otherwise>
    </c:choose>
    </jsp:body>
</t:base>
