<%-- 
    Document   : insert
    Created on : 13-Feb-2025, 1:16:39 pm
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
        <title>Insert Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Rubik+Pixels&display=swap" rel="stylesheet">

        <style>
            .heading {
                font-family: "Merriweather", serif;
                font-size: 40px;
                font-weight: bold;
            }
        </style>
    </head>
    <body> 
        <div class="d-flex justify-content-center align-items-center vh-100">
            <div class="container">

                <h2 class="heading">CRUD Operations on HTML forms</h2>
            </div>

            <div id="success" class="alert alert-success alert-dismissible fade" role="alert">
                <strong>Successfully Submitted</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>

            <div id="fail" class="alert alert-danger alert-dismissible fade" role="alert">
                <strong>Try Again</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>

            <div class="container">
                <form action="controller/insert_controller.jsp" id="insertform">

                    <div class="mb-3">
                        <label for="name"  class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" id="name" 
                               placeholder="Enter your name">
                        <small id="namevalid" class="form-text text-danger invalid-feedback">Name is invalid.</small>
                    </div>

                    <div class="mb-3">
                        <label for="studentid" class="form-label">Student ID</label>
                        <input type="text" name="studentid" class="form-control" id="studentid" placeholder="Enter your Student ID">
                        <small id="studentidvalid" class="form-text text-danger invalid-feedback">Student ID is invalid.</small>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email address</label>
                        <input type="text" name="email" class="form-control" id="email" aria-describedby="emailHelp"
                               placeholder="Enter your email address">
                        <small id="emailvalid" class="form-text text-danger invalid-feedback">Email is invalid.</small>
                    </div>

                    <div class="mb-3">
                        <label for="dob" class="form-label">DOB</label>
                        <input type="text" name="dob" class="form-control" id="dob" placeholder="Enter your date of birth">
                        <small id="dobvalid" class="form-text text-danger invalid-feedback">DOB is invalid. Type DOB in format YYYY-MM-DD.</small>
                    </div>


                    <div class="mb-3">
                        <label for="phone" class="form-label">Phone Number</label>
                        <input type="text" name="phone" class="form-control" id="phone" placeholder="Enter your phone number">
                        <small id="phonevalid" class="form-text text-danger invalid-feedback">Phone number is invalid.</small>
                    </div>



                    <button type="submit" id="btn" class="btn btn-primary">Submit</button>

                </form>
            </div>
        </div>
        <!--
        <%
            ReadVal objRead = new ReadVal();
            List<UserRead> list = objRead.get_val();
            Iterator<UserRead> itList = list.iterator();
        %>
    <center>
        <table border="1">
        <%
            while (itList.hasNext()) {
                UserRead objUser = new UserRead();
                objUser = itList.next();

        %>
        <tr>
            <td><%=objUser.getName()%></td>
            <td><%=objUser.getStudentid()%></td>
            <td><%=objUser.getEmail()%></td>
            <td><%=objUser.getDob()%></td>
            <td><%=objUser.getPhone()%></td>
        </tr>
        <%
            }
        %>
    </table>
</center>-->
        <script src="js/jquery-3.7.1.min.js"></script>
        <!--            <script>
                        $(document).ready(function () {
                            alert("jQuery is working!");
                        });</script>-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.21.0/jquery.validate.min.js"></script>
        <script src="validation.js"></script>


    </body>
</html>
