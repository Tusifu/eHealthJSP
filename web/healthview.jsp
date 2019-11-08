<%-- 
    Document   : display
    Created on : Oct 10, 2019, 12:30:36 PM
    Author     : Edison
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.CitizenDAO"%>
<%@page import="java.util.List"%>
<%@page import="domain.Citizens"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="tablecss.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>citizens table</title>
    </head>
    <body>
        
            <h2 id="heading">E-HEALTH SYSTEM By (Tusifu Edison 20762)</h2>           
        

        <table border="1" cellspacing="2" cellpadding="2" id="table">
            <thead>
                <tr>
                    <th>identityNO</th>
                    <th>firstName</th>
                    <th>lastName</th>
                    <th>weight</th>
                    <th>height</th>
                    <th>bmi</th>
                    <th>healthCondition</th>
                </tr>
            </thead>
            <tbody>
                <%
                    
                    List<Citizens> citizens = new CitizenDAO().findAll();
                    for (Citizens c : citizens) {
                %>
                <tr>
                    <td><%= c.getIdentityNo() %></td>
                    <td><%= c.getFirstName()  %></td>
                    <td><%= c.getLastName()  %></td>
                    <td><%= c.getWeight()+"kg" %></td>
                    <td><%= c.getHeight() +"m" %></td>
                    <td><%= Math.round(c.findBodyMassIndex(c.getWeight(), c.getHeight())) %></td>
                    <td><%= c.getHealthCondition() %></td>
                    
                </tr>
                <%}
                %>
            </tbody>
        </table>


    </body>
</html>
