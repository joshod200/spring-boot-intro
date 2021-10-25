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
                            <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mi nunc, eleifend sed urna id, aliquam fringilla metus. Etiam lacus neque, viverra sit amet neque id, feugiat consequat eros. Maecenas pharetra est felis, nec interdum nunc maximus in. Nam in augue a libero rhoncus imperdiet. Morbi tempor tortor velit, faucibus vehicula urna rutrum sit amet. Aliquam suscipit ornare mi, sit amet pharetra erat rhoncus id. Praesent dictum lorem tortor, eu varius nisl aliquet sit amet. Suspendisse eu risus rhoncus, ultrices odio eleifend, porttitor turpis. Phasellus vel posuere justo. Quisque auctor tincidunt porta. Vivamus convallis rhoncus ante, quis dapibus tellus vulputate facilisis. Morbi eget quam ac sapien mattis lobortis eget in felis. Vivamus aliquet suscipit arcu, a dapibus metus. Fusce porta nisi ut cursus iaculis.
                            </p>
                            <p>
                            Nulla facilisi. Curabitur vitae cursus urna. Sed dictum venenatis ligula blandit porttitor. Curabitur venenatis dolor et hendrerit consequat. Mauris eget dui sit amet odio tempor consectetur. Aliquam semper gravida placerat. Donec lorem risus, tincidunt sit amet odio a, vehicula eleifend orci. Fusce orci lacus, ultrices elementum eros nec, volutpat ornare arcu. Nam non lacinia ante. In non pharetra diam, id porta lorem. Aenean ultricies nec mi et luctus. Praesent iaculis ligula non augue aliquet, ut porta mauris porta. Vestibulum ultricies sapien non odio lobortis venenatis.
                            </p>
                            <p>
                            Suspendisse in tristique orci, at mollis felis. Aenean sodales diam id ligula laoreet ullamcorper. Nam egestas nunc sollicitudin ipsum dictum dictum. In porta purus felis, sit amet commodo massa tempor at. In ut purus non urna fringilla molestie a vel lectus. In non velit sem. Mauris varius dui vitae risus rutrum pretium. Fusce bibendum sem consequat ipsum dictum, ac consectetur erat vulputate. Vivamus eu urna dignissim, egestas nisl auctor, ultricies lectus. Maecenas id nulla viverra, dapibus enim ut, semper est. Proin cursus mollis felis, ac aliquam eros porttitor id. Vestibulum a feugiat massa, a tempus ex.
                            </p>
                            <p>
                            In sit amet dolor sit amet ante tincidunt laoreet nec in est. Aliquam eu venenatis risus. Ut ligula tortor, condimentum ac mi ut, tristique placerat tellus. Praesent vel erat risus. In hac habitasse platea dictumst. Pellentesque interdum lectus nisi, porta euismod lorem lacinia luctus. In hendrerit, dui non imperdiet egestas, ante mauris feugiat nisl, et pharetra neque sem at sem. Pellentesque et purus molestie, finibus lectus eu, luctus odio. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris mattis mauris non odio malesuada, vel fringilla urna porta. Suspendisse dui enim, aliquam non sapien a, venenatis sodales ligula. Praesent vestibulum et dolor non fermentum. Etiam sed scelerisque quam. Donec non velit tellus.
                            </p>
                            <p>
                            Aenean id aliquet ante, laoreet sollicitudin odio. Aliquam tempus metus eget ultricies porta. Aenean laoreet orci nulla, in congue ligula ornare ut. Curabitur vestibulum risus ac sapien accumsan, id vestibulum justo malesuada. Sed ullamcorper magna et justo hendrerit dignissim. Proin consectetur risus nisi, eu convallis ipsum venenatis et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
                            </p>
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
                                <p>${post.body}</p>
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
