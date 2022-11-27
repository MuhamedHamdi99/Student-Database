<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
   
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<!-- ********************************************************************  --> 
<br><br>   
<img src="<c:url value="/resources/imgs/user-interface.png"/>" style="margin-left: 470px;width: 180px;height: 180px" />
<br><br><br>
 
 
    <c:url value="/login" var="loginUrl"/>  
    <form action="${loginUrl}" method="post">         
        <c:if test="${param.error != null}">          
            <p>  
            <div class="alert alert-danger" role="alert" style="width: 350px;margin-left: 400px;">
                Invalid username and password.
                </div>  
            </p>  
        </c:if>  
        <c:if test="${param.logout != null}">         
            <p>  
                You have been logged out.  
            </p>  
        </c:if>  
        <p>  
        <div class="form-floating" style="margin-left: 420px;" >
            <label for="username" style="font: bold;font-size: 20px;">Your Username   </label>  <br>
            <input type="text" class="form-control" id="username" name="username" style="width: 300px;" /> 
            </div>
                 
        </p>  
        <p>  
        <div class="form-floating" style="margin-left: 420px;">
            <label for="password" style="font: bold;font-size: 20px;">Your Password  </label>  <br>
            <input type="password" class="form-control" id="password" name="password" style="width: 300px;" />      
        </div>
        </p>  
        <input type="hidden"                          
            name="${_csrf.parameterName}"  
            value="${_csrf.token}"/>  
        <button type="submit" class="btn btn-outline-primary" style="margin-left: 480px;width:170px;">Log in</button>  
    </form>
    
    
    
    
    
    
    
<!-- ********************************************************************  -->    
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>    
    
    