<%-- 
    Document   : jsp1
    Created on : 9 mar 2023, 13:11:12
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="m-0 row justify-content-center">
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Numerillos</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Random</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"></a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Acciones
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Sumar</a></li>
            <li><a class="dropdown-item" href="#">Restar</a></li>
            <li><a class="dropdown-item" href="#">Multiplicar</a></li>
            <li><a class="dropdown-item" href="#">Promedio</a></li>
            <li><a class="dropdown-item" href="#">Mayor y menor</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
        <h1>Hello World!</h1>
         
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
       
  <div class="carousel-indicators">
       <%
            String num=request.getParameter("num");
            for (int i = 0; i < Integer.parseInt(num); i++) {
                    
                
        %>
       
  </div>
  <div class="carousel-inner">
    
            <div class="carousel-item active" data-bs-interval="10000">
        <%
            int y = (int)(Math.random()*100);
            if(y <50)
            {
        %>
        <h1 class= "text-center">Es menor a 50</h1>
        <%
            }
            else
            {
        %>
        <h1 class= "text-center">Es mayor o igual a 50</h1>
         <%
             }
         %>
        <h2 class= "text-center">El numero <%= i+1%> es: <%= y%></h2>   
        <br><br><br><br><br><br><br><br><br><br>
        <div class="carousel-caption d-none d-md-block">

      </div>
    </div>
         <%
             }
         %>
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


         
            
    </body>
</html>