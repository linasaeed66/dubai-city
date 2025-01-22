<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <style type = "text/css">
         h1 { -moz-animation-duration: 3s;
            -webkit-animation-duration: 3s;
            -moz-animation-name: slidein;
            -webkit-animation-b mnb bんmjんmんk、name: slidein;
         }
         @-moz-keyframes slidein {
              from {margin-left:100%;
                      width:300% }
              to {margin-left:0%; width:100%;}
         }
         @-webkit-keyframes slidein {
            from {margin-left:100%; width:300%}
            to { margin-left:0%;width:100%;}
         }
         
      </style> </head>
<body>
      <h1>CSS3 Animation</h1>
      <p>moving left animation .</p>
      <button onclick = "myFunction()">Reload page</button>

      <script>
         function myFunction() {
            location.reload();
         }
      </script>

   </body>
</html>

</html>