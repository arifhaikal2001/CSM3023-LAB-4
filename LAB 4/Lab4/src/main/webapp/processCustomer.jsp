<%-- 
    Document   : processCustomer
    Created on : 28 Apr 2024, 11:07:18 pm
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Scripting</title>
    </head>
    <body>
        <h1>Use JSP Scriptlet and JSP Expression in application</h1>
      <%
            final int price = 10;

            String customerCode = request.getParameter("customer_code");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String customerType = request.getParameter("cust_type");

            if (customerType.equals("1") && quantity > 100){
                out.print("<p>You're entitled to a 10% discount</p>");
                out.print("<p>Total amount is RM" + quantity * price * 0.9 + "</p>");
            }
            else if (customerType.equals("2") && quantity > 100) {
                out.print("<p>You're entitled to a 25% discount</p>");
                out.print("<p>Total amount is RM" + quantity * price * 0.75 + "</p>");
            }
            else {
                out.print("<p>You're not entitled to a discount..!</p>");
                out.print("<p>Total amount is RM" + quantity * price + "</p>");
            }
    %>
    <br><br>
    </body>
    <footer>
        &copy;2024 ARIF HAIKAL
    </footer>
</html>