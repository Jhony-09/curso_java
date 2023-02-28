<%-- 
    Document   : operaciones
    Created on : Feb 24, 2023, 4:09:49 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean class="java_ee.CalculosBean" id="calculosBean" scope="request"/>
        <h1>Operaciones</h1>
        <h3>Ingrese los valores </h3><!-- comment -->
        <form action='resultado.jsp'>
            Operador 1 <input type='text' name="operador1" />
            Operador 2 <input type='text' name="operador2" />
             <input type='submit' value="Ejecutar Operacion"  />
        </form>
        
        <%-- Mostrar errores --%>
        <% if (request.getAttribute("error") != null) { %>
            <p style="color:red"><%=request.getAttribute("error")%></p>
        <% } %>
        
    </body>
</html>

