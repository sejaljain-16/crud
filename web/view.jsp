<%-- 
    Document   : view
    Created on : 18-Feb-2025, 10:37:51 pm
    Author     : Sejal Jain
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="common.UserRead"%>
<%@page import="CRUD.ReadVal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Details</title>
        <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Rubik+Pixels&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .heading {
                font-family: "Merriweather", serif;
                font-size: 40px;
                font-weight: bold;
            }
            
    
    
        </style>
    </head>

    <body>    
        <h1 class="heading">Form Details</h1>

        <%
            ReadVal objRead = new ReadVal();
            List<UserRead> list = objRead.get_val();
            Iterator<UserRead> itList = list.iterator();
        %>
    <center>
        <table class="table table-bordered table-hover table-striped">
            <thead class="table-dark">
            <tr>
                <th>Name</th>
                <th>Student ID</th>
                <th>Email Address</th>
                <th>DOB</th>
                <th>Phone Number</th>
            </tr>
        </thead>
        
            <%
                while (itList.hasNext()) {
                    UserRead objUser = new UserRead();
                    objUser = itList.next();

            %>
           
        <tbody>
            <tr>
                <td><%=objUser.getName()%></td>
                <td><%=objUser.getStudentid()%></td>
                <td><%=objUser.getEmail()%></td>
                <td><%=objUser.getDob()%></td>
                <td><%=objUser.getPhone()%></td>
<!--                <td><a href="edit.jsp?student_id=<%=objUser.getStudentid()%>">Edit</td>
                <td><a href="edit.jsp?student_id=<%=objUser.getStudentid()%>">Delete</td>-->
            </tr>
            </tbody>
            <%
                }
            %>
        </table>
    </center>
</body>
</html>
