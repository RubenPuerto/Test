<%-- 
    Document   : NuevoCurso
    Created on : 11/11/2014, 02:49:18 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Insertar</h1>
        <%
    String correo = request.getParameter("EDAD"); 
    String curso = request.getParameter("ESTATURA"); 
    String valor = request.getParameter("VALOR"); 
    if (correo!= null && curso!=null && valor!=null) {
            
        
    String qry="insert into curso_nuevo(Nombre_Curso,Correo,Valor_Pagado)values('"+correo+"','"+curso+"','"+valor+"');";
    sql.executeUpdate(qry);
    out.print("insertado");
    }
        %>
<FORM name="insert" METHOD=post action="NuevoCurso.jsp">
edad: <INPUT TYPE=TEXT NAME=EDAD><BR>
estatura: <INPUT TYPE=TEXT NAME=ESTATURA><BR>
valor: <INPUT TYPE=TEXT NAME=VALOR><BR> 
<INPUT TYPE=SUBMIT VALUE="Guardar"><BR>
</FORM>
    </body>
</html>
