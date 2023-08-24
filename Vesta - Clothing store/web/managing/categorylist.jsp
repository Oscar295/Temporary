<%-- 
    Document   : category
    Created on : Aug 24, 2023, 11:53:31 AM
    Author     : Admin
--%>

<%@page import="category.CategoryDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="../navbar.jsp" flush="true"></jsp:include>
            <div class="container">
                <p>
                <h2>WELCOME ${sessionScope.adminsession.username}</h2>
        </p>
        <a href="main?action=logout" class="btn btn-danger">Logout</a>
        <a href="main?action=list" class="btn btn-primary">Back to List</a>
        <a href="main?action=categorycreate" class="btn btn-success">Create new category</a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-6">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<CategoryDTO> categoryList = (ArrayList) request.getAttribute("category");
                            if (categoryList != null) {
                                for (CategoryDTO category : categoryList) {
                        %>
                        <tr>
                            <td><%= category.getId()%></td>
                            <td><%= category.getName()%></td>
                            <td>
                                <a href="main?action=categoryedit&id=<%= category.getId()%>" class="btn btn-primary action">Edit</a>
                                <a href="main?action=categorydelete&id=<%= category.getId()%>" class="btn btn-danger action">Delete</a>
                            </td>
                        </tr>
                        <%                            }
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
