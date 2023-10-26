<% if (request.getAttribute("errorMessage") != null) { %>
<p class="text-white">Error: <%=request.getAttribute("errorMessage")%></p>
<% } %>
<%--Head--%>
<%@ include file="/components/includes/static/head.jsp"%>

<!-- B Header -->
<jsp:include page="components/includes/static/header.jsp"></jsp:include>
<!-- E Header -->

<%--B Content Dynamic--%>
<jsp:include page="pages/home.jsp"></jsp:include>
<%--<%@include file="pages/home.jsp"%>--%>
<%--E Content Dynamic--%>

<!-- B footer -->
<%@ include file="components/includes/static/footer.jsp"%>
<!-- E footer -->

<%--links js--%>
<%@ include file="components/includes/js.jsp"%>