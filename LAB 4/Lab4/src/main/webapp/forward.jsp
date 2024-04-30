<%-- 
    Document   : forward
    Created on : 30 Apr 2024, 3:38:19 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action(forward)</title>
            <style>
            footer {
                text-align: center;
            }
            </style>
    </head>
    <body>
        <h2>Using jsp:forward to display user info.</h2>
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name="U_Name" value="ARIF HAIKAL"/>
            <jsp:param name="Email" value="S66355@ocean.umt.edu.my"/>
            <jsp:param name="Nationality" value="Malaysia"/>
            <jsp:param name="Background" value="UMT Student"/>
        </jsp:forward>
    </body>
    <footer>
        &copy;2024 ARIF HAIKAL
    </footer>
</html>