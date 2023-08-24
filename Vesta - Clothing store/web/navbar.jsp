<%-- 
    Document   : navbar
    Created on : Aug 22, 2023, 11:11:40 AM
    Author     : Admin
--%>

<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
    <header class="modal-fullscreen">
      <nav class="navbar" id="navbar-main">
        <div class="vstack">
            <div class="hstack justify-content-between m-auto" style="width: 95%">
              <div class="hstack p-2 justify-content-evenly">
                <a class="navbar-brand" href="#"
                  ><img src="./image/logo-brand.png" alt=""
                /></a>
              </div>
              <div class="hstack gap-5 fs-4" style="font-weight: 400">
                <a class="nav-link active" aria-current="Home" href="#">Home</a>
                <a class="nav-link active" aria-current="Shop" href="#">Shop</a>
                <a class="nav-link active" aria-current="About" href="#">About</a>
                <a class="nav-link active" aria-current="Contact" href="#">Contact</a>
              </div>
              <div class="p-2 hstack gap-5 fs-4">
                <a href="./cart.jsp" class="nav-link active">
                  <span class="bi bi-search fs-4"></span>
                </a>
                <a href="./cart.jsp" class="nav-link active">
                  <span class="bi bi-cart3"></span>
                </a>
                <a href="./cart.jsp" class="nav-link active">
                  <span class="bi bi-person-circle"></span>
                </a>
              </div>
            </div>
        </div>
      </nav>
    </header>
      
      <footer>
          
      </footer>
      
    </body>
</html>
