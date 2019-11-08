<%-- 
    Document   : index
    Created on : Oct 9, 2019, 11:09:05 PM
    Author     : Edison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>


            body {
                font-family: "Roboto";
                font-weight: 100;
                font-size: 12px;
                line-height: 30px;
                background: black;
            }

            .container {
                max-width: 400px;
                width: 100%;
                margin: 0 auto;
                position: relative;
            }

            #contact {
                background: #F9F9F9;
                padding: 25px;
                margin: 90px 0;
                margin-bottom:20px ;
                
            }

            fieldset {
                border: medium none !important;
                margin: 0 0 10px;
                min-width: 100%;
                padding: 0;
                width: 100%;

            }

            #contact input[type="text"]
            {
                width: 100%;
                border: 2px solid #FF8C00;
                background: black;
                margin-bottom: 8px;
                margin-left: -12px;
                padding: 10px;
                color: white;

            }

            #contact button[type="submit"] {
                cursor: pointer;
                width: 100%;
                border: none;
                background: #FF8C00;
                color: black;
                margin: 0 0 5px;
                padding: 10px;
                font-size: 15px;
            }
            #view{
                cursor: pointer;
                width: 100%;
                border: none;
                background: #FF8C00;
                color: black;
                margin: 0 0 5px;
                padding: 10px;
                font-size: 15px;
            }
            #heading {
                font-family: "Roboto";
                font-size: 15px;
                border: 3px solid #ccc;
                background: #FF8C00;
                margin: 25%;
                margin-top: 10px;
                margin-bottom: 1px;
                padding-left: 5%;
            }
            #heading,h2{
                color: black;
            }
            #message{
                color:red;
            }

        </style>
    </head>
    <body>

        <div id="heading">
            <h2>E-HEALTH SYSTEM By (Tusifu Edison 20762)</h2>           
        </div>
    <center>
        <div class="container" id="contact">  
            <form  action="recordcitizen.jsp" method="post">
                <h2>Health Checkup Form</h2>

                <fieldset>
                    <input placeholder="identityNo" type="text"   autofocus name="identityNo">
                </fieldset>
                <fieldset>
                    <input placeholder="firstName" type="text"    name="firstName">
                </fieldset>
                <fieldset>
                    <input placeholder="lastName" type="text"    name="lastName">
                </fieldset>
                <fieldset>
                    <input placeholder="weight" type="text"    name="weight">
                </fieldset>
                <fieldset>
                    <input placeholder="height" type="text"    name="height">
                </fieldset>
                <fieldset>
                    <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
                </fieldset>
            </form>
            <a href="healthview.jsp"><button id="view">View Citizens</button></a>
                <%
                    Object o = session.getAttribute("message");
                    if (o != null) {
                        String message = session.getAttribute("message").toString();
                %>

                <h3 id="message"><%= message%></h3>         
                <%
                        session.removeAttribute("message");
                    }
                %>
            
        </div>
                </center>
    </body>
</html>
