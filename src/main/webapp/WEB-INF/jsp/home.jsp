<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
         <title>Spring Boot Intro</title>
         <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
                 rel="stylesheet">
         <link rel="stylesheet" href="style.css" type="text/css">
     </head>
     <body>
        <div class="container">
            <h1>Spring Boot Intro</h1>
            <ul class="row">
                  <c:forEach items="${posts}" var="post">
                     <li class="col-sm-4">
                        <img src="${post.image}"/>
                        <h4>${post.title}</h4>
                        <small class="text-muted">${post.date()}</small>
                        <p>${post.body}</p>
                        <a>Read More</a>
                     </li>
                </c:forEach>
            </ul>
        </div>
        <script src="webjars/bower/jquery/2.6.3/jquery.min.js"></script>
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
     </body>
 </html>
