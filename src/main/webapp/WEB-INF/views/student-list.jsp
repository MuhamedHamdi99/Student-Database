<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Students</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<br>
<h1 style="margin-left: 10px;font-size: 30px;font: italic;font: bold;">
Student List 
</h1>
<br> 
<table class="table table-striped" border="1" style="margin-left: 10px;width:auto;height: auto;" >
    <tr >
      <th scope="col" style="font-size: 15px;font: italic;font: bold;">ID</th>
      <th scope="col" style="font-size: 15px;font: italic;font: bold;">Student ID</th>
      <th scope="col" style="font-size: 15px;font: italic;font: bold;">Name</th>
      <th scope="col" style="font-size: 15px;font: italic;font: bold;">Age</th>
      <th scope="col" style="font-size: 15px;font: italic;font: bold;">City</th>
      <th scope="col" style="font-size: 15px;font: italic;font: bold;">Edit</th>
      
    </tr>
  <c:forEach  var="stud"  items="${allstudents}">
    <tr>
      <td >${stud.id}</td>
      <td >${stud.student_id}</td>
      <td >${stud.name}</td>
      <td> ${stud.age}</td>
      <td >${stud.city}</td>
      <td > <a href="/delete/<c:out value='${stud.id}'/>"> <button type="button" class="btn btn-danger">Delete</button>  </a>  
      | <a href="/edit?id=<c:out value='${stud.id}'/>"><button type="button" class="btn btn-success">Update</button></a> </td>
     </tr>
   </c:forEach>
</table>

<br>
<form action="/addstudent">  
<input type="submit" value="Add student" class="btn btn-outline-primary" style="width: 170px;margin-left: 10px;"/>
 </form>
 
<br>
<a href="/logout">  
<button type="button" class="btn btn-outline-dark" style="width: 170px;margin-left: 10px;">Log Out</button>
 </a>

  
    
<!-- ********************************************************************  -->    
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html> 