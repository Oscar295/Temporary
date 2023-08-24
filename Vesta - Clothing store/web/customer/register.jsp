<%-- 
    Document   : register
    Created on : Aug 23, 2023, 7:35:30 PM
    Author     : nguye
--%>

<%@page import="account.AccountDTO"%>
<%@page import="account.AccountError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        Create new user
        <%
            AccountDTO userError = (AccountDTO) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new AccountDTO();
            }
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }

        %>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required="" /> <br/>
            Full Name<input type="text" name="fullName" required="" /><br/>
            Role ID<input type="text" name="role" required="" /><br/>
            Password<input type="password" name="password" required=""/><br/>
            <input type="submit" name="action" value="register"/><br/>
            <input type="reset" value="Reset"/>
        </form>
    </body>
</html>
