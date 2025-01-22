<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>
windows onafterprint Event
</title>
</head>
<body>
      hello world!<br/>
      <%
      out.println("your IP address is " + request.getRemoteAddr());
      %>
      
</body>
</html>