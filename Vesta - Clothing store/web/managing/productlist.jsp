<%-- 
    Document   : productlist
    Created on : Aug 21, 2023, 7:42:07 AM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="category.CategoryDTO"%>
<%@page import="product.ProductDTO"%>
<%@page import="java.util.List"%>
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
        <jsp:include page="../navbar.jsp" flush="true"></jsp:include>
        <div class="container">
            <p>
            <h2>WELCOME ${sessionScope.adminsession.username}</h2>
            </p>
            <a href="main?action=logout" class="btn btn-danger">Logout</a>
        </div>
        <div class="container pt-5">
            <a href="main?action=create" class="btn btn-success">Add New Product</a>
            <a href="main?action=categorylist" class="btn btn-success">Category List</a>
            <table border="0" class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Category</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Size</th>
                        <th>Color</th>
                        <th>Description</th>
                        <th>Stock</th>
                        <th>Image</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<ProductDTO> productList = (ArrayList) request.getAttribute("productlist");
                        List<CategoryDTO> categoryList = (ArrayList) request.getAttribute("categorylist");
                        if (productList != null && categoryList != null) {
                            for (ProductDTO product : productList) {
                    %>
                    <tr>
                        <td><%= product.getId()%></td>
                        
                            <%
                                for(CategoryDTO category: categoryList){
                                    if(category.getId() == product.getCategoryId()){
                            %>
                                       
                            <td><%= category.getName()%></td>
                            <%
                                    }
                                }
                            %>
                        
                        <td><%= product.getName()%></td>
                        <td><%= product.getPrice()%></td>
                        <td><%= product.getSize()%></td>
                        <td><%= product.getColor()%></td>
                        <td><%= product.getDescription()%></td>
                        <td><%= product.getStock()%></td>
                        <td>
                            <img src="<%= product.getImage()%>" class="img-thumbnail">
                        </td>
                        <td>
                            <a href="main?action=edit&id=<%= product.getId()%>" class="btn btn-primary action">Edit</a>
                            <br>
                            <a href="main?action=delete&id=<%= product.getId()%>" class="btn btn-danger action">Delete</a>
                        </td>
                    </tr>
                    <%
                            }
                        }

                    %>
                </tbody>
            </table>




        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
