<%@include file="/WEB-INF/jsp/common/page-includes.jspf" %>
<html>
    <head>
        <title><spring:message code="home.browser.title"/></title>
        <%@include file="/WEB-INF/jsp/common/common-head-elements.jspf" %>
        <script type="text/javascript" src="<c:url value="/site/js/jquery.cookies.2.2.0.js" /> "></script>
    </head>
    <body>
        <h3><spring:message code="home.page.title"/></h3>


        <br> <spring:message code="home.page.language.lbl"/> &nbsp;

        <select id="language" path="language">
            <option value="en_US">English</option>
            <option value="fr_FR">French</option>
        </select>


        <script type="text/javascript" charset="UTF-8">
            $(document).ready(function () {

                // Populate dropdown based on cookie language
                var language = $.cookies.get( 'org.springframework.web.servlet.i18n.CookieLocaleResolver.LOCALE' );
                $('#language')
                        .val(language)
                        .change(function() {
                    var  newHref = window.location.href;
                    if( newHref.indexOf('?siteLanguage') > 0 ) {
                        newHref = newHref.substring(0, newHref.indexOf('?siteLanguage')) ;
                    }
                    newHref += '?siteLanguage=' + $('#language').val();
                    window.location.href = newHref;
                });
            });
        </script>
    </body>



</html>