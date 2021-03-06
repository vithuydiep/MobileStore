<%-- 
    Document   : products-list
    Created on : Aug 19, 2021, 8:58:37 AM
    Author     : Napster
--%>
<%@page import="Model.Cart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mobile Store</title>
        <script src="https://kit.fontawesome.com/395f3c7beb.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/style/products-list.css">
    </head>
    <body>
        <header>
            <div class="header">
                <div class="container">
                    <div class="header-title">
                        <h1 class="title">Products</h1>
                        <h5 class="title">All the available products in our store</h5>
                    </div>

                    <div class="log-out">
                        <button onclick="location.href='${pageContext.request.contextPath}/jsp/cart.jsp' " id="viewCart" type="button">
                            <i class="fas fa-shopping-cart"></i>View cart</button>
                        <!-- <button id="product" type="button">
                            <i class="fas fa-shopping-cart"></i>Product</button> -->
                    </div>
                </div>
            </div>

        </header>
        <section class="middle-page">
            <div id="container" class="container">
                <c:forEach var="Product" items="${prdList}">
                    <div class="card">
                        <div class="content">
                            <form action="${pageContext.request.contextPath}/CartController" method="post">
                                <div class="card-title"><c:out value="${Product.getProductName()}"/></div>
                                <img src="${pageContext.request.contextPath}/assets/image/1.jpg" alt="" class="card-img">
                                <div class="card-content">
                                    <c:out value="${Product.getDescription()}"/>
                                </div>
                                <div class="card-price"><c:out value="${Product.getUnitPrice()}"/> USD</div>
                                <div class="card-unit"><c:out value="${Product.getUnitInStock()}"/> units in stock</div>
                                <input type="hidden" name="command" value="plus"/>
                                <input type="hidden" name="quantity" value="1"/>
                                <input type="hidden" name="productID" value ="${Product.getProductId()}"/>
                                <div class="card-button">
                                    <a >
                                        <button formaction="${pageContext.request.contextPath}/productDetail?proId=<c:out value="${Product.getProductId()}"/>" class="detail">
                                            <i class="fas fa-exclamation-circle"></i></i>Details
                                        </button>
                                    </a>
                                    <button value="<c:out value="${Product.getProductId()}"/>" class="order">
                                        <i class="fas fa-shopping-cart"></i>Order Now</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </c:forEach>
        </section>
    </body>
</html>
