<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por RG">
    <form id="form-rg" type="get" action="" autocomplete="on">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" id="rg-label" for="rg">RG:</label>
            </div>
            <input class="form-control" aria-label="RG" aria-describedby="rg-label" type="text" id="rg" name="rg" autofocus="" placeholder="00.000.000-0" data-mask="00.000.000-0" value="${param.rg}">
            <div class="input-group-append">
                <button class="btn btn-dark">
                    <span class="oi oi-magnifying-glass" title="Buscar" aria-hidden="true"></span> Buscar
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
                    O RG fornecido não está cadastrado
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
        </c:otherwise>
    </c:choose>
</t:base>
