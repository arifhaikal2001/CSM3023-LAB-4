<%-- 
    Document   : jspParameter
    Created on : 30 Apr 2024, 3:12:38 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action</title>
    </head>
    <body>
        <h1>Using jsp:include and jsp:param to display information on JSP page</h1>
        
        <%  
            String sCode = "CSM3223";
            String sSubject = "Web Programming 2";
            String sCredit = "3(2+1)";
        %>
        
        <jsp:include page="subjectInfo.jsp" flush="true">
            <jsp:param name="code" value="<%=sCode%>"/>
            <jsp:param name="subject" value="<%=sSubject%>"/>
            <jsp:param name="credit" value="<%=sCredit%>"/>
        </jsp:include>
        <br>
    </body>
    <footer>
        &copy;2024 ARIF HAIKAL
    </footer>
</html>