<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit student</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<br><br>
<h1 style="margin-left: 10px;font-size: 30px;font: italic;font: bold;">Update Student</h1><br><br>

<form:form action="/update" method="POST" modelAttribute="student" >

<table style=" margin-left:10px;">

<tr>
<td style="font: bold;font-size: 20px; ">Student ID </td> 
 <td> <input type="text" id="fname" name="id" value="${student.id}" class="form-control" style="width: 280px;"/>
</tr>

 <tr>
    <td style="font: bold;font-size: 20px; ">Student Number</td>
    <td> <form:input path="student_id" class="form-control" style="width: 280px;"/>  </td>
  </tr>
  
   <tr>
    <td style="font: bold;font-size: 20px; ">Student Name</td>
    <td> <form:input path="name" class="form-control" style="width: 280px;"/>  </td>
  </tr>
  
 <tr>
    <td style="font: bold;font-size: 20px; ">Student City</td>
    <td> <form:input path="city" class="form-control" style="width: 280px;"/>  </td>
  </tr>
  
   <tr>
    <td style="font: bold;font-size: 20px; ">Student age</td>
    <td> <form:input path="age" class="form-control" style="width: 280px;"/>  </td>
  </tr>
  
  <tr>
    <td> <input type="submit" value="Update" style="width: 100px;" class="btn btn-outline-primary" /> </td>
  </tr>
  
</table>




</form:form>








  
    
<!-- ********************************************************************  -->    
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html> 