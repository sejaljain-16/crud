<%-- 
    Document   : delete_controller
    Created on : 19-Feb-2025, 9:48:28 pm
    Author     : Sejal Jain
--%>


<%@page import="java.lang.String"%>
<%@page import="CRUD.DeleteVal"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Information</title>
    </head>
    <body>
         <%
            String studentid = request.getParameter("student_id");
          

            DeleteVal objDel = new DeleteVal();
            objDel.deleteValue(studentid);

        %>

        <script type="text/javascript">
            window.location.href = "http://localhost:9495/CRUDapp/view.jsp"


        </script>

    </body>
</html>
