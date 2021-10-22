<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
         <title></title>
         <link rel="stylesheet" href="style.css" type="text/css">
     </head>
     <body>
        <h1>Spring Boot Intro</h1>
        <ul>
              <c:forEach items="${posts}" var="post">
                 <li style="display: inline-block;">
                    <img src="/post1.jpg">
                    <h2>${post.title}</h2>
                </li>
            </c:forEach>
        </ul>
     </body>
 </html>