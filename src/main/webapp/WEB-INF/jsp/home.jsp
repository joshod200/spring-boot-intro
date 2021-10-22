<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
         <title>Spring Boot Intro</title>
         <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
                 rel="stylesheet">
         <link rel="stylesheet" href="style.css" type="text/css">
     </head>
     <body>
        <div class="container">
            <h1>Spring Boot Intro</h1>
            <ul class="row">
                  <c:forEach items="${posts}" var="post">
                     <li class="col-lg-3">
                        <img src="/post1.jpg">
                        <h2>${post.title}</h2>
                     </li>
                </c:forEach>
            </ul>
        </div>
        <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
        <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     </body>
 </html>