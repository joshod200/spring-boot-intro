<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
         <title>Spring Boot Intro</title>
         <meta name="viewport" content="width=device-width, initial-scale=1" />
         <meta name="mobile-web-app-capable" content="yes">
         <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
         <link rel="stylesheet" href="/style.css" type="text/css">
     </head>
     <body>
         <div id="post-image" style="background-image: url(/${post.imageMax()});">
             <div id="opaque"></div>
             <div id="post-content-wrapper">
                 <div class="text-center">                  
                    <h1>${post.title}</h1>
                    <p>${post.date()}</p>
                 </div>
             </div>
         </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mt-5">
                    <div>
                        <div id="lipsum">
                            ${post.body}
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 border-start">
                    <div class="mt-5">
                        <h2>Recent Posts</h2>
                        <br/>
                        <ul>
                          <c:forEach items="${posts}" var="post">
                            <li>
                                <h4 class="mt-2">${post.title}</h4>
                                <small class="text-muted">${post.date()}</small>
                                <p>${post.summary}</p>
                                <a href="/posts/${post.id.toString()}">Read More</a>
                            </li>
                          </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <script src="/webjars/bower/jquery/2.6.3/jquery.min.js"></script>
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
     </body>
 </html>
