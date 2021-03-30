<%-- 
    Document   : editar
    Created on : 28-mar-2021, 16:33:17
    Author     : Wilber-Zruc
--%>
<%@page import="com.emergentes.modelo.Agenda"%>
<%
    Agenda reg = (Agenda)request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Actividades</h1>
        <form action="MainServlet" method="post">
            <table>
                <%
                if(reg.getId()!=0)
                {
                %>
                <tr>

                    <td>ID</td>
                    <td>
                        <input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly>
                    </td>
                </tr>                
                <%
                }
                else
                {
                %>
                <tr>
                    <td>ID</td>
                    <td><input type=hidden name="id" value="<%= reg.getId()%>"></td>
                </tr> 
                
                <%
                }
                %>
    
                <tr>
                    <td>HORA</td>
                    <td><input type="time" name="hora" value="<%= reg.getHora() %>" autofocus></td>
                </tr>
                <tr>
                    <td>ACTIVIDAD</td>
                    <td><textarea name="actividad" rows="3" cols="50"><%= reg.getActividad()%></textarea></td>
                </tr>    
                <tr>
                    <td>LUGAR</td>
                    <td><input type="text" name="lugar" value="<%= reg.getLugar() %>"></td>
                </tr>
                <tr>
                    <td>ESTADO</td>
                    <td>  
                        <select name="estado">
                            <option value="Imcompleto">Imcompleto</option>
                            <option value="Completo">Completo</option>
                        </select>
                    </td>
                    
                    <%--<td><input type="text"  value="<%= reg.getEstado() %>"></td>--%>
                    
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"> </td>                  
                </tr>
                
                
            </table>
        </form>
    </body>
</html>
