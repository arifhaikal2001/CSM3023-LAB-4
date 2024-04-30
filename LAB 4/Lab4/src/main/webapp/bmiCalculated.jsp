<%-- 
    Document   : bmiCalculated
    Created on : 30 Apr 2024, 11:30:02 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Calculated</title>
    </head>
    <body>
        <h1>BMI Calculated</h1>
        
        <%
            double weight = Double.parseDouble(request.getParameter("weight"));
            double height = Double.parseDouble(request.getParameter("height"));

            double bmi = weight / (height * height);

            String bmiCategory;
            if (bmi < 18.5) {
                bmiCategory = "underweight";
            } else if (bmi >= 18.5 && bmi <= 25) {
                bmiCategory = "optimal weight";
            } else {
                bmiCategory = "overweight";
            }

            DecimalFormat df = new DecimalFormat("#.##");
            String bmiFormatted = df.format(bmi);
        %>
        
        <p>Your BMI is: <%= bmiFormatted %></p>
        <p>You are <%= bmiCategory %>.</p>
    </body>
    <footer>
        &copy;2024 ARIF HAIKAL
    </footer>
</html>