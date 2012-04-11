<%@include file="/WEB-INF/jsp/common/page-includes.jspf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><decorator:title default="Default Title" /></title>
        <meta name="abstract" content="main"/>

        <link href="${pageContext.request.contextPath}/site/css/base.css" rel="stylesheet" type="text/css" />

        <link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/site/less/style.less">

        <script src="<c:url value="/site/js/jquery-1.7.1.min.js" /> "></script>
        <script src="<c:url value="/site/js/less-1.2.1.min.js" /> "></script>

        <decorator:head/>
    </head>
    <body>

    <div id="wrapper"><%-- contains everything that isn't the footer --%>

        <div id="primaryNavbar" class="navbar navbar-fixed-top"><div class="navbar-inner"><div class="container-fluid">
            <div id="party-block">
                <span class="party-name">Pio Corp</span>
            </div>

            <nav id="navLinks" role="navigation">
                <ul class="nav pills">
                    <li><a href="${pageContext.request.contextPath}/home"><spring:message code="nav.link.home"/></a></li>
                    <li><a href="${pageContext.request.contextPath}/bbq"><spring:message code="nav.link.bbq"/></a></li>
                    <li><a href="${pageContext.request.contextPath}/other"><spring:message code="nav.link.other"/></a></li>
                </ul>
            </nav>

        </div></div></div>

        <div id="content-body">
            <decorator:body/>
        </div>

    </div><%-- #wrapper/ --%>

    <footer id="footer">
        <small>&copy;2012 <span class="party-name">Pio design</span>
        </small>

    </footer>
    </body>
</html>