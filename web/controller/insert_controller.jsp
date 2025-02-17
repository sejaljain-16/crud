<%-- 
    Document   : insert_controller
    Created on : 13-Feb-2025, 6:04:59 pm
    Author     : Sejal Jain
--%>

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

            out.println(name);
            out.println(studentid);
            out.println(email);
            out.println(dob);
            out.println(phone);
            
            InsertVal objIns = new InsertVal();
            objIns.InsertVal(name, studentid,email, dob, phone);
            
        %>

        INSERTED SUCCESSFULLY!

    </body>
</html>
