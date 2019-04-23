<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por CPF">
    <form id="form-cpf" type="get" action="" autocomplete="on">
        <div class="input-group mb-3">
            <div class="input-group-prepend"><label class="input-group-text" id="cpf-label" for="cpf">CPF: </label></div>
            <input class="form-control" aria-label="CPF" aria-describedby="cpf-label" type="text" id="cpf" name="cpf" autofocus="" placeholder="000.000.000-00" value="${param.cpf}">
            <input class="btn btn-outline-primary" type="button" type="submit" value="Buscar">
        </div>
    </form>
    <c:choose>
        <c:when test="${pessoa != null}">
            <t:ficha></t:ficha>
        </c:when>
        <c:otherwise>

        </c:otherwise>
    </c:choose>

</t:base>
