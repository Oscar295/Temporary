<%-- 
    Document   : login
    Created on : Aug 21, 2023, 7:41:22 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
        <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
        crossorigin="anonymous"
        />
        <link rel=”stylesheet”
        href=”https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css”
        />
        <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
        />
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
          crossorigin="anonymous"
        ></script>
    <style>
        body{
            overflow-x: hidden
        }
    </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" flush="true"></jsp:include>
    <div class="vstack gap-5 ">
        <div style="width: 100%">
            <img src="./image/banner.png" alt="banner" width="100%" height="100%"/>
        </div>
        <div class="m-auto mt-5">
            <div style="width: max-content">
                <h1 class="mb-5 ">Login</h1>

                <form action="main" method="POST">
                    <div class="form-group mb-4">
                        <label style="width: 5rem">Username</label>
                        <input type="text" name="username" style="width: 15rem" />
                    </div>
                    <div class="form-group mb-4">
                      <label style="width: 5rem">Password</label>
                      <input type="password" name="password" style="width: 15rem" />
                    </div>
                    <div class="form-group">
                      <input type="hidden" name="action" value="login" />
                      <input
                        class="btn btn-primary"
                        type="submit"
                        name="action"
                        value="Login"
                      />
                    </div>
                  </form>
            </div>
            </div>
        </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
