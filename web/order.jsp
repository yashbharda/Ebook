<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
        <%@include file="allcomponent/allcss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <%@include file="allcomponent/navbar.jsp" %>
        <div class="container p-1">
            <h3 class="text-center text-primary">Your Order</h3>
            <table class="table table-striped mt-3">
            <thead class="bg-dark text-white">
            <tr>
              <th scope="col">Order Id</th>
              <th scope="col">Name</th>
              <th scope="col">Book Name</th>
              <th scope="col">Author</th>
              <th scope="col">Price</th>
              <th scope="col">Payment Type</th>
            </tr>
        </thead>
        <tbody>
            <%
                User u =(User)session.getAttribute("userobj");
                BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
                List<Book_Order> blist=dao.getBook(u.getEmail());
                for(Book_Order b:blist)
                {%>
                    <tr>
                        <th><%=b.getOrderId()%></th>
                        <td><%=b.getUserName()%></td>
                        <td><%=b.getBookName()%></td>
                        <td><%=b.getAuthor()%></td>
                        <td><%=b.getPrice()%></td>
                        <td><%=b.getPaymenttype()%></td>
                    </tr>
                <%}
            %>
        </tbody>
        </table>
        </div>
    </body>
</html>
