<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca por E-mail">
    <form id="form-email" type="get" action="" autocomplete="on">
        <div class="input-group mb-3">
            <div class="input-group-prepend"><label class="input-group-text" id="email-label" for="email">E-mail: </label></div>
            <input class="form-control" aria-label="E-mail" aria-describedby="email-label" type="email" id="email" name="email" autofocus="" placeholder="exemplo@dominio.com" value="${param.email}">
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
