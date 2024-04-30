<%-- 
    Document   : insuranceQuotation
    Created on : 30 Apr 2024, 10:56:26 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insurance Quotation</title>
        
        <script>
        function validateForm() {
            let icno = document.getElementById("icno").value;
            let name = document.getElementById("name").value;
            let price = document.getElementById("price").value;

            if(icno === "" || name === "" || price === "") {
                alert("Please fill in all fields");
                return false;
            }
            return true;
        }
    </script>
    
    </head>
    <body>
        <h1>Insurance Quotation</h1>

        <form action="processInsuranceQuo.jsp" onsubmit="return validateForm()">
            <fieldset>
                <legend>Insurance Calculation</legend>
                
                <label for="icno">ICNo :</label>
                <input type="number" id="icno" name="icno"><br><br>
                
                <label for="name">Name :</label>
                <input type="text" id="name" name="name"><br><br>
                
                <label for="price">Market Price :</label>
                <input type="number" id="price" name="price"><br><br>
                
                <label for="cover">Coverage Type:</label>
                <select name="cover" id="cover">
                    <option value="1" selected="selected">Comprehensive</option>
                    <option value="2">Third-party</option>
                </select><br><br>
                
                <label for="disc">No claims discount(NCD):</label>
                <select name="disc" id="disc">
                    <option value="1" selected="selected">10%</option>
                    <option value="2">25%</option>
                    <option value="3">35%</option>
                    <option value="4">55%</option>
                </select><br><br>
                
                <button type="submit">Submit</button>
                <button type="reset">Cancel</button>
            </fieldset>
            <br>
    </body>
    <footer>
        &copy;2024 ARIF HAIKAL
    </footer>
</html>