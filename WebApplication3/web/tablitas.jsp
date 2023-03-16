<%-- 
    Document   : tablitas
    Created on : 15 mar 2023, 19:54:19
    Author     : corcho
--%>
<%@page import="corcho.datos"%>
<%@page import="corcho.nego"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tablitas</title>
    </head>
     <body>
        
        <%
            nego negocio = new nego();
            int num =(int)(Math.random()*10);
            String cad = String.format("?num=%d", num);
        %>
        <table class = "table table-dark table-hover">
            <tr>
                <td>Nombre</td>
                <td>Calificaciones</td>
            </tr>
            <%
                if (negocio.getLista() != null && !negocio.getLista().isEmpty()) {
                    for(datos datito : negocio.getLista()){
            %>
            <tr>
                <td><%=datito.getNombre()%></td>
                <td><%=datito.getCal()%></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>

</html>
