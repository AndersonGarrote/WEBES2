<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Visualizar cadastro">
    <c:choose>
        <c:when test="${pessoa != null}">
            <t:ficha></t:ficha>
        </c:when>
        <c:otherwise>
            <p>Cadastro não encontrado</p>
        </c:otherwise>
    </c:choose>

</t:base>
