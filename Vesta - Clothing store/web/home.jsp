<%-- 
    Document   : home
    Created on : Aug 24, 2023, 12:17:55 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <jsp:include page="./navbar.jsp" flush="true" />
        <div class="vstack gap-5">
            <div style="width: 100%">
                <img src="./image/banner.png" alt="banner" width="100%" height="100%"/>
            </div>
            <h2 class="m-auto">Browse The Range</h2>
            <div class="hstack justify-content-around mt-3">
                <a href="?category=tshirt" class ="nav-link active">
                    <div class="card text-center" style="width: 13rem;">
                        <img src="./image/tshirt.png" class="card-img-top" alt="T-shirt" width="100%" height="90%">
                        <div class="card-body">
                          <p class="card-text">T-Shirt</p>
                        </div>
                     </div>
                </a>                
                <a href="?category=shirt" class ="nav-link active">
                    <div class="card text-center" style="width: 13rem;">
                        <img src="./image/shirt.png" class="card-img-top" alt="Shirt" width="100%" height="90%">
                        <div class="card-body">
                          <p class="card-text">Shirt</p>
                        </div>
                    </div>
                </a>
                <a href="?category=jacket"class ="nav-link active">
                    <div class="card text-center" style="width: 13rem;">
                        <img src="./image/jacket.png" class="card-img-top" alt="Jacket" width="100%" height="90%">
                        <div class="card-body">
                          <p class="card-text">Jacket</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </body>
</html>
