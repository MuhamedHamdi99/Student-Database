<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<!-- ********************************************************************  --> 
<br><br>   
<img src="<c:url value="/resources/imgs/registration.png"/>"  style="margin-left: 590px;width: 180px;height: 180px" />
<br><br>




            <form:form id="regForm" modelAttribute="user" action="registerform" method="post">

                <table >
             
                    <tr>
                        <td>
                        <br>
                            <form:label path="username" style="font: bold;font-size: 20px; margin-left: 430px;">Username     </form:label>
                        </td>
                       
                        <td>
              <br>
                          <form:input path="username" class="form-control" name="username" id="username" style="width: 350px;" />
                        
                        </td>
                    </tr>
                 
                    
         <!--****************************  -->            

                    
                    <tr>
                        <td>
                        <br>
                            <form:label path="passsword" style="font: bold;font-size: 20px;margin-left: 430px;" >Password</form:label><br>
                        </td>
                        <td>
                        <br>
                            <form:password path="passsword" class="form-control" name="passsword" id="passsword" style="width: 350px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <br>
                            <form:label path="fullname" style="font: bold;font-size: 20px;margin-left: 430px;">FullName</form:label><br>
                        </td>
                        <td>
                        <br>
                            <form:input path="fullname" class="form-control" name="fullname" id="fullname" style="width: 350px;"/>
                        </td>
                    </tr>  
                    <tr>  
                    <tr>
                        <td></td>
                        <td>
                        <br>
                            <form:button id="register" class="btn btn-outline-primary" style="margin-left: 90px;width: 150px;" name="register" >Register</form:button>
                        </td>
                    </tr>                    
                </table>
            </form:form>
 
<!-- ********************************************************************  -->    
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html> 