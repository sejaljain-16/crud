<%-- 
    Document   : edit_controller
    Created on : 19-Feb-2025, 6:07:27 pm
    Author     : Sejal Jain
--%>

<%@page import="CRUD.EditVal"%>
<%@page import="common.UserRead"%>
<%@page import="CRUD.InsertVal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String studentid = request.getParameter("studentid");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String phone = request.getParameter("phone");

            UserRead objUser = new UserRead();
            objUser.setStudentid(studentid);
            objUser.setName(name);
            objUser.setEmail(email);
            objUser.setDob(dob);
            objUser.setPhone(phone);

            EditVal objedit = new EditVal();
            objedit.editUser(objUser);

        %>

        <script type="text/javascript">
            window.location.href = "http://localhost:9495/CRUDapp/view.jsp"


        </script>

    </body>
</html>
