<%@include file="/WEB-INF/jsp/common/page-includes.jspf" %>
<html>
<head>
    <title><spring:message code="home.browser.title"/></title>
    <%@include file="/WEB-INF/jsp/common/common-head-elements.jspf" %>
    <script type="text/javascript" src="<c:url value="/site/js/jquery.cookies.2.2.0.js" /> "></script>
</head>
<body>
<%--<h3><spring:message code="home.page.title"/></h3>--%>

<h3>
    <spring:message code="home.page.language.lbl"/> &nbsp;
</h3>

<h2>Date Formatting</h2>

<h3>@DateTimeFormat(style="S-")</h3>
<p><spring:eval expression="model.today"/></p>
<small>This functionality is still limited!!!</small>
<p>
    @DateTimeFormat does not currently support l18n properties file support for custom date-format, the ticket was filed
    and is currently waiting here: <a href="https://jira.springsource.org/browse/SPR-8654">https://jira.springsource.org/browse/SPR-8654</a>
    and the
    desired useage is <a href="http://forum.springsource.org/showthread.php?113518-DateTimeFormat-and-pattern-i18n">http://forum.springsource.org/showthread.php?113518-DateTimeFormat-and-pattern-i18n</a>.
</p>
<br/><br/>

<spring:message code="time.format" var="datePattern" />
<h3>Spring EL version with &lt;fmt:formatDate pattern="${datePattern}" /&gt;</h3>
<p>
<fmt:formatDate value="${model.todayDate}" pattern="${datePattern}"/>
</p>

<br/><br/>
<h2>Currency and Numbers</h2>
<h3>Example: <spring:eval expression="model.size"/></h3>

<br/><br/><br/>
<form:form commandName="model" modelAttribute="model">
    <form:select id="language" path="language">
        <option value="en_US">English</option>
        <option value="fr_FR">French</option>
        <option value="pt_US">American Portuguese</option>
        <option value="pt_PO">Portugal Portuguese</option>
    </form:select>
</form:form>


<script type="text/javascript" charset="UTF-8">
    $(document).ready(function () {

        // Populate dropdown based on cookie language
        var language = $.cookies.get('org.springframework.web.servlet.i18n.CookieLocaleResolver.LOCALE');
        $('#language')
                .val(language)
                .change(function () {
                    var newHref = window.location.href;
                    if (newHref.indexOf('?siteLanguage') > 0) {
                        newHref = newHref.substring(0, newHref.indexOf('?siteLanguage'));
                    }
                    newHref += '?siteLanguage=' + $('#language').val();
                    window.location.href = newHref;
                });
    });
</script>
</body>


</html>