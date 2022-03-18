<%-- 
    Document   : product
    Created on : Aug 19, 2021, 8:58:12 AM
    Author     : Napster
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Store</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/style/product.css">
</head>
<body>
    <header>
        <div class="header">
            <div class="container">
                <div class="header-title">
                    <h1 class="title">Mobile Store</h1>
                    <h5 class="title">Add Products</h5>
                </div>
    
                <div class="log-out">
                    <button id="logout" type="button">Log out</button>
                </div>
            </div>
        </div>
        
    </header>
    <%
        String status  = "";
        if(request.getAttribute("status")!=null)
        {
            status = request.getAttribute("status").toString();
        }
    %>
    <section class="middle-page">
        <div class="container">
            <input type="hidden" id="status"  value="<c:out value="${status}"></c:out>">
            <form class="login" id="form" action = "${pageContext.request.contextPath}/AddNewProduct" method = "post"  enctype="multipart/form-data">
                <div class="title-form">
                    Add new product
                </div>
                <div class="content-form">
                    <div class="container">
                        <div class="form-component">
                            <label for="productName">Product Name</label>
                            <input maxlength="35" type="text" name="productName" required  id="productName">
                        </div>
                        <div class="form-component">
                            <label for="unitPrice">Unit Price</label>
                            <input max="10000000000" type="number" name="unitPrice" required id="unitPrice">
                        </div>
                        <div class="form-component">
                            <label for="unitInStock">Units In Stock</label>
                            <input max="500" type="number" name="unitInStock" required value="0" id="unitInStock">
                        </div>
                        <div class="form-component">
                            <label for="description">Description</label>
                            <textarea id="description" name="description" cols="40" rows="5" name="description"></textarea>  
                        </div>
                        <div class="form-component">
                            <label for="manufacture">Manufacture</label>
                            <input maxlength="35" type="text" name="manufacture" required  id="manufacture">
                        </div>
                        <div class="form-component">
                            <label for="category">Category</label>
                            <input maxlength="35" type="text" name="category" required  id="category">
                        </div>
                        <div class="form-component">
                            <label for="condition_new">Condition</label>
                            <input value='new' type="radio" name="condition" checked id="condition_new">
                            <label class="label-radio" for="condition_new">New</label>
                            <input value='old' type="radio" name="condition" id="condition_old">
                            <label class="label-radio" for="condition_old">Old</label>
                            <input value='refurbished' type="radio" name="condition" id="condition_refurbished">
                            <label class="label-radio" for="condition_refurbished">Refurbished</label>
                        </div>
                        <div class="form-component">
                            <label for="productImageFile">Product Image File</label>
                            <input type="file" name="productImageFile" required  id="productImageFile">
                        </div>
                        <div class="form-component">
                            <button id="submit" type="submit">Add Product</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <script src="${pageContext.request.contextPath}/assets/js/product.js"></script>
</body>
</html>
