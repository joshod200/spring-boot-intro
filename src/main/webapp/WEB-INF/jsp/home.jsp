<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
         <title>Spring Boot Intro</title>
         <meta name="viewport" content="width=device-width, initial-scale=1" />
         <meta name="mobile-web-app-capable" content="yes">
         <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
                 rel="stylesheet">
         <link rel="stylesheet" href="style.css" type="text/css">
     </head>
     <body>
        <div class="container">
            <h1>Spring Boot Intro</h1>
            <ul class="row">
                  <c:forEach items="${posts}" var="post">
                     <li class="col-sm-4 mt-3">
                        <img src="/${post.image}"/>
                        <h4 class="mt-2">${post.title}</h4>
                        <small class="text-muted">${post.date()}</small>
                        <p>${post.summary}</p>
                        <a href="/posts/${post.id.toString()}">Read More</a>
                     </li>
                </c:forEach>
            </ul>
        </div>
        <script src="webjars/bower/jquery/2.6.3/jquery.min.js"></script>
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
     </body>
 </html>
