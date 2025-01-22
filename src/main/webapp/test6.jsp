<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
<head><title> example on single-line text input in HTML forms </title><head>
<body>
<form>
first name: <input type = "text" name = "first_name"/>
<br>
last name:<input type = "text" name = "last _name"/>
<br>
password: <input type = "password" name = "password"/>
<br>
description: <br/>
<textarea rows = "5" cols = "50" name = "description">
</textarea>

<input type = "checkbox" name = "maths" value = "on"> maths
<input type = "checkbox" name = "physics" value = "on" >physics
<input type = "radio" name = "subject" value =  "english"> english
<input type = "radio" name = "subject" value = "spanish" >spanish 
<select name = "dropdown">
<br>
<option value = "programming language" selected >programming language</option>
<option value = "framework">framework</option>
</select>
<input type = "file" name = "fileupload" accept = "image/*"/>
<label for="datemax"> Enter a date before 1980-01-01:</label>
 <input type="date" id="datemax" name="datemax" max="1979-12-31"><br><br> 
  <label for=" datemin"> Enter a date after 2000-01-01:</label>
<input type="date" id="datemin" name="datemin" min= 2000-01-02">
</form> 
<p> <%= new Date() %> </p>
<body>

</body>
</html>