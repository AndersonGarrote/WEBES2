<%@ tag description="Pagination component" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="url" required="true" type="String" %>
<%@ attribute name="start" required="true" type="Integer" %>
<%@ attribute name="end" required="true" type="Integer" %>
<%@ attribute name="page" required="true" type="org.springframework.data.domain.Page" %>
<nav>
    <ul class="pagination">
        <c:choose>
            <c:when test="${page.isFirst()}">
                <li class="page-item disabled">
                    <a class="page-link">Anterior</a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="${url}${page.getNumber()}">Anterior</a>
                </li>
            </c:otherwise>
        </c:choose>
        <c:forEach var="i" begin="${start}" end="${end}">
            <c:choose>
                <c:when test="${i == page.getNumber() + 1}">
                    <li class="page-item active">
                        <a class="page-link" href="${url}${i}">${i}</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item">
                        <a class="page-link" href="${url}${i}">${i}</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:choose>
            <c:when test="${page.isLast()}">
                <li class="page-item disabled">
                    <a class="page-link">Próxima</a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="${url}${page.getNumber() + 2}">Próxima</a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
</nav>