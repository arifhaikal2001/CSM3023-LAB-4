<%-- 
    Document   : processInsuranceQuo
    Created on : 30 Apr 2024, 10:56:42 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details Insurance</title>
    </head>
    <body>  
            <%
                String icNo = request.getParameter("icno");
                String customerName = request.getParameter("name");
                double marketPrice = Double.parseDouble(request.getParameter("price"));
                String coverageType = request.getParameter("cover");
                int ncd = Integer.parseInt(request.getParameter("disc"));

                double discount = 0.0;
                switch (ncd) {
                    case 1:
                        discount = 0.1;
                        break;
                    case 2:
                        discount = 0.25;
                        break;
                    case 3:
                        discount = 0.35;
                        break;
                    case 4:
                        discount = 0.55;
                        break;
                }

                double totalAmount = marketPrice * (1 - discount);
                double gst = totalAmount * 0.06;
                double finalAmount = totalAmount + gst;
            %>
            
            <fieldset>
                <legend><h3>Details of Insurance Quotation</h3></legend>
                    <p style="color: #7D0DC3;">IC No: <%= icNo %></p>
                    <p style="color: #7D0DC3;">Customer Name: <%= customerName %></p>
                    <p style="color: #7D0DC3;">Market Price: <%= marketPrice %></p>
                    <p style="color: #7D0DC3;">Coverage Type: <%= (coverageType.equals("1")) ? "Comprehensive" : "Third-party" %></p>
                    <p style="color: #7D0DC3;">No Claim Discount (NCD): <%= (discount * 100) %>%</p>
                    <p style="color: #7D0DC3;">Insurance Amount: <%= totalAmount %></p>
                    <p style="color: #7D0DC3;">6% GST: <%= gst %></p>
                    <p style="color: #7D0DC3;"><strong>Final Amount (with 6% GST): <%= finalAmount %></strong></p>

            </<fieldset>
    </body>
</html>