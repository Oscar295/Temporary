<%-- 
    Document   : categoryedit
    Created on : Aug 24, 2023, 12:01:57 PM
    Author     : Admin
--%>

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
        <div class="container">
            <p>
            <h2>WELCOME ${sessionScope.adminsession.username}</h2>
        </p>
        <a href="main?action=logout" class="btn btn-danger">Logout</a>
        <a href="main?action=list" class="btn btn-primary">Back to List</a>
    </div>
        <div class="container">
            <form action="main">
                <div class="form-control">
                    <label>ID</label>
                    <input type="number" name="id" class="form-group" value="${requestScope.category.id}" readonly="">
                </div>
                <div class="form-control">
                    <label>Name</label>
                    <input type="text" name="name" class="form-group" value="${requestScope.category.name}">
                </div>
                <input type="hidden" name="action" value="categoryupdate">
                <input type="submit" class="btn btn-primary" value="Update">
            </form>
        </div>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
