<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Setting</title>
        <%@include file="allcomponent/allcss.jsp" %>
        <style type="text/css">
            a
            {
                text-decoration: none;
                color: black;
            }
            a:hover
            {
                text-decoration: none;
            }
        </style>
    </head>
    <body style="background-color: #f7f7f7">
        <%@include file="allcomponent/navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"> </c:redirect>
        </c:if>
        <div class="container">
            <h3 class="text-center mt-2">Hello,${userobj.name}</h3>
            <div class="row p-5">
                <div class="col-md-4">
                    <a href="sell_book.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-book-open  fa-3x"></i>
                                </div>
                                <h4>Sell Old Book</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4">
                    <a href="old_book.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-book-open  fa-3x"></i>
                                </div>
                                <h4>Old Book</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4">
                    <a href="edit_profile.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-id-card fa-3x"></i>
                                </div>
                                <h4>Edit Profile</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-6 mt-3">
                    <a href="order.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-danger">
                                    <i class="fas fa-box-open  fa-3x"></i>
                                </div>
                                <h4>My Order</h4>
                                <p>Track Your Order</p>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-6 mt-3">
                    <a href="helpline.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-user-circle  fa-3x"></i>
                                </div>
                                <h4>Help Center</h4>
                                <p>24*7 Service</p>
                            </div>
                        </div>
                    </a>
                </div>
                
            </div>
        </div>
        <div style="margin-top: 71px;">
        <%@include file="allcomponent/footer.jsp" %>
        </div>
    </body>
</html>
