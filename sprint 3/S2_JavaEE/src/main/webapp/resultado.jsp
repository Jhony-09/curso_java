<%-- 
    Document   : resultado
    Created on : Feb 24, 2023, 4:0:16 PM
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
        <h1>Resultados</h1>
        <jsp:useBean class="java_ee.CalculosBean" id="calculosBean" scope="request"/>
        
        <%-- Validar que los operandos sean números --%>
        <% 
        try {
            calculosBean.setN1(Integer.parseInt(request.getParameter("operador1")));
            calculosBean.setN2(Integer.parseInt(request.getParameter("operador2")));
        } catch (NumberFormatException ex) {
            request.setAttribute("error", "Los operandos deben ser números enteros.");
            request.getRequestDispatcher("operaciones.jsp").forward(request, response);
            return;
        }
        %>
        
        <%-- Validar que los operandos sean mayores a 0 --%>
        <% if (!calculosBean.puedeCalcular()) { %>
            <p style="color:red">Los operandos deben ser valores mayores a 0.</p>
        <% } else { %>
            <p>Operador 1: <%=calculosBean.getN1()%></p>
            <p>Operador 2: <%=calculosBean.getN2()%></p>
            <p>Suma: <%=calculosBean.getResultado()%></p>
            <p>Resta: <%=calculosBean.getResultado()%></p>
            <p>Multiplicación: <%=calculosBean.getResultado()%></p>
            <p>División: <%=calculosBean.getResultado()%></p>
        <% } %>
        
    </body>
</html>

