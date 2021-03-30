<%-- 
    Document   : index
    Created on : 28-mar-2021, 16:17:52
    Author     : Wilber-Zruc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Agenda"%>
<%
    if (session.getAttribute("listaper")== null)
    {
        ArrayList<Agenda> la =new ArrayList<Agenda>();
        session.setAttribute("listaper", la);   
    }
    ArrayList<Agenda> lista = (ArrayList<Agenda>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda Personal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div>
            <div class="row d-flex justify-content-center">
                <div class="col-10" align="right">
                    <h1 class="text-center">Agenda Personal</h1>
                    <a href="MainServlet?op=nuevo"><h5>Nuevo Registro</h5></a>
                    <table class="table">
                        <tr align="center" bgcolor="#7894B9">
                            <th>Id</th>
                            <th>Hora</th>
                            <th>Actividad</th>
                            <th>Lugar</th>
                            <th>Completado</th>
                            <th></th>
                            <th></th>

                        </tr>
                        <%
                            if(lista !=null)
                            {
                                for(Agenda item : lista)
                                {

                        %>
                        <tr align="center" bgcolor="#B3C5DE">
                            <td ><%= item.getId() %></td>
                            <td><%= item.getHora() %></td>
                            <td><%= item.getActividad() %></td> 
                            <td><%= item.getLugar() %></td>
                            <td><%= item.getEstado() %></td>
                            <td><a class="btn btn-success" href="MainServlet?op=editar&id=<%=item.getId() %>">Editar</a></td>
                            <td><a class="btn btn-danger" href="MainServlet?op=eliminar&id=<%=item.getId() %>" onclick="return(confirm('Esta seguro desea ELIMINAR este registro??'))">Eliminar</a></td>
                        </tr>

                        <%
                                }
                            }
                        %>
                    </table>
                </div>
            </div> 
        </div>
    </body>
</html>