<%-- 
    Document   : bmiCalculator
    Created on : 30 Apr 2024, 11:30:54 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Calculator</title>
    </head>
    <body>
        <h1>BMI Calculator</h1>
        
        <form method="post" action="bmiCalculated.jsp">
            Enter your weight in kilograms: <input type="text" name="weight"><br>
            Enter your height in meters: <input type="text" name="height"><br>
        <input type="submit" value="Calculate BMI">
    </form>
    <br>
    </body>
    <footer>
        &copy;2024 ARIF HAIKAL
    </footer>
</html>