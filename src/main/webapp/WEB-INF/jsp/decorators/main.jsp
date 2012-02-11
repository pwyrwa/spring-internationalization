<%@include file="/WEB-INF/jsp/common/page-includes.jspf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><decorator:title default="Default Title" /></title>
        <meta name="abstract" content="main"/>
        <link href="${pageContext.request.contextPath}/site/css/base.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="<c:url value="/site/js/jquery-1.7.1.min.js" /> "></script>
        <decorator:head/>
    </head>
    <body>
        <div id="header"><h1><spring:message code="site.page.header"/></h1></div>
        <div id="content-body">
            <decorator:body/>
        </div>
        <div id="navLinks">
            <br>
            <br>
            <a href="${pageContext.request.contextPath}/home"><spring:message code="nav.link.home"/></a></li> |
            <a href="${pageContext.request.contextPath}/other"><spring:message code="nav.link.other"/></a></li>
        </div>
        <br>
        <div id="footer">&copy;2012</div>
    </body>
</html>