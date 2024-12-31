<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EBook: Register</title>
        <%@include file="allcomponent/allcss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="allcomponent/navbar.jsp" %>
        <div class="container p-2">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Registration</h4>

                            <c:if test="${not empty succMsg }">
                                <p class="text-center text-success"><b>${succMsg }</b></p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                                
                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger"><b>${failedMsg }</b></p>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>
                            
                            <form action="register" method="post">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Full Name</label>
                                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Phone No</label>
                                  <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phno">
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                                </div>
                                <div class="form-check">
                                  <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                </div>
                                <div class="text-center p-2">
                                <button type="submit" class="btn btn-primary btn-block" name="btn_register">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
        <div style="margin-top: 11px;">
        <%@include  file="allcomponent/footer.jsp" %>
        </div>
    </body>
</html>
