<%-- 
    Document   : categorycreate
    Created on : Aug 24, 2023, 1:50:30 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <div class="form-group">
                    <label>ID</label>
                    <input name="id" type="number" class="form-control">
                </div>
                <div class="form-group">
                    <label>Name</label>
                    <input name="name" type="text" class="form-control">
                </div>
            </form>
        </div>
    </body>
</html>
