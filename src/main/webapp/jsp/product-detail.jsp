<%-- 
    Document   : product-detail
    Created on : Aug 19, 2021, 8:57:48 AM
    Author     : Napster
--%>

<%@page import="Model.Product"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/style/product-detail.css">
</head>
<body>
    <header>
        <div class="header">
            <div class="container">
                <div class="header-title">
                    <h1 class="title">Products</h1>
                </div>
            </div>
        </div>
        
    </header>
    <%
       Product proDetail = (Product)  request.getAttribute("proDetail");                                                                                        
    %>
    <section class="middle-page">
            <div id="container" class="container">
                <div class="card">
                    <div class="content">
                        <img src="<c:out value="${proDetail.getProductImage()}"/>" alt="" class="card-img">
                    </div>
                </div>
                <div class="card">
                    <div class="content">
                        <div class="card-title"><c:out value="${proDetail.getProductName()}"/></div>                                            
                        <div class="card-content"><c:out value="${proDetail.getDescription()}"/></div>
                        <div class="card-itemCode">
                            <span>Item Code: </span>
                            <span><c:out value="${proDetail.getProductId()}"/></span>
                        </div>
                        <div class="card-manuFaturer">
                            <span>ManuFacturer: </span>
                            <span><c:out value="${proDetail.getManufacture()}"/></span>
                        </div>
                        <div class="card-category">
                            <span>Category: </span>
                            <span><c:out value="${proDetail.getCategory()}"/></span>
                        </div>
                        <div class="card-unit">
                            <span>Available units in stock: </span>
                            <span><c:out value="${proDetail.getUnitInStock()}"/></span>
                        </div>
                        <div class="card-price"><c:out value="${proDetail.getUnitPrice()}"/> USD</div>
                        <div class="card-button">
                            <a href="${pageContext.request.contextPath}/productList">
                                <button class="detail">
                                    <i class="fas fa-arrow-circle-left"></i>Back
                                </button>
                            </a>
                            <button onclick="location.href = '${pageContext.request.contextPath}/CartController?command=plus&productID=${proDetail.getProductId()}&quantity=1'"  class="order">
                                <i class="fas fa-shopping-cart"></i>Order Now</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <script src="${pageContext.request.contextPath}/assets/js/product-detail.js"></script>
</body>
</html>
