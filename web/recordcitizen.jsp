<%-- 
    Document   : create.jsp
    Created on : Oct 10, 2019, 10:13:51 AM
    Author     : Edison
--%>

<%@page import="dao.CitizenDAO"%>
<%@page import="domain.Citizens"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Citizens cit=new Citizens();
            cit.setIdentityNo(request.getParameter("identityNo"));
            cit.setFirstName(request.getParameter("firstName"));
            cit.setLastName(request.getParameter("lastName"));
            Double weight=Double.parseDouble(request.getParameter("weight"));
            Double height=Double.parseDouble(request.getParameter("height"));
            cit.setHeight(height);
            cit.setWeight(weight); 
            cit.setHealthCondition(cit.findHealthCondition(weight, height));
            
            String msg=new CitizenDAO().addCitizen(cit);
            session.setAttribute("message", msg);
            response.sendRedirect("newchecking.jsp");
        %>
    </body>
</html>
