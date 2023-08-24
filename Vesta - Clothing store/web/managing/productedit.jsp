<%-- 
    Document   : productedit
    Created on : Aug 23, 2023, 11:37:28 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="category.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Managing Page</title>
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
        <div class="row">
            <div class="col-6">
                <form enctype="multipart/form-data" action="main">
                    <div class="form-group">
                        <label>ID</label>
                        <input type="number" class="form-control" name="id" value="${requestScope.product.id}" readonly>
                    </div>
                    <%
                        List<CategoryDTO> categoryList = (ArrayList) request.getAttribute("category");
                        if (categoryList != null) {
                    %>
                    <div class="form-group">
                        <label>Category</label>
                        <select name="category" class="from-control">
                            <%
                                for (CategoryDTO category : categoryList) {
                            %>    
                            <option value="<%=category.getId()%>">
                                <%= category.getName()%>
                            </option>
                            <%
                                }
                            %>
                        </select>
                    </div>
                    <%
                        }
                    %>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" name="name" value="${requestScope.product.name}">
                    </div>
                    <div class="form-group">
                        <label>Price</label>
                        <input type="number" class="form-control" name="price" value="${requestScope.product.price}">
                    </div>
                    <div class="form-group">
                        <label>Size</label>
                        <input type="text" class="form-control" name="size" value="${requestScope.product.size}">
                    </div>
                    <div class="form-group">
                        <label>Color</label>
                        <input type="text" class="form-control" name="color" value="${requestScope.product.color}">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" class="form-control" name="description" value="${requestScope.product.description}">
                    </div>
                    <div class="form-group">
                        <label>Stock</label>
                        <input type="number" class="form-control" name="stock" value="${requestScope.product.stock}">
                    </div>
                    <div class="form-group">
                        <label>Image</label>
                        <input type="file" accept="image/*" name="image" onchange="loadFile(event)">
                        <img id="output"/>
                        <script>
                            var loadFile = function (event) {
                                var output = document.getElementById('output');
                                output.src = URL.createObjectURL(event.target.files[0]);
                                output.onload = function () {
                                    URL.revokeObjectURL(output.src) // free memory
                                }
                            };
                        </script>
                    </div>
                    <input type="submit" name="action" value="Update" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
