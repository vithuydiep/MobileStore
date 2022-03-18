<%-- 
    Document   : cart
    Created on : Aug 19, 2021, 2:34:34 PM
    Author     : Vi Diep
--%>

<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile Store</title>
        <script src="https://kit.fontawesome.com/395f3c7beb.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../assets/style/cart.css">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    </head>
    <%
        Cart cart = (Cart) session.getAttribute("cart");
    %>
    <body>
        <header>
            <div class="header">
                <div class="container">
                    <div class="header-title">
                        <h1 class="title">Cart</h1>
                        <h5 class="title">All select product in your cart</h5>
                    </div>
                </div>
            </div>

        </header>
        <section class="middle-page">
            <div class="container">
                <div class="button-clear">
                    <button onclick="location.href = '../CartController?command=clear'" id="clear" type="button">
                        <i class="fas fa-times-circle"></i>Clear Cart</button>
                    <button id="checkout" type="button">
                        <i class="fas fa-shopping-cart"></i>Check out</button>
                </div>
                <div class="table">
                    <table>
                        <thead>
                        <th>Product</th>
                        <th></th>
                        <th >Quantity</th>
                        <th>Unit Price</th>
                        <th>Price</th>
                        <th>Action</th>
                        </thead>
                        <c:forEach var="list" items="${cart.getCartItems()}" >
                            <tr>
                                <td>${list.getValue().getProduct().productName}</td>
                                <td></td>
                                <td >${list.getValue().getQuantity()}</td>
                                <td >${list.getValue().getProduct().getUnitPrice()}</td>
                                <td >${list.getValue().getQuantity() * list.getValue().getProduct().getUnitPrice()}</td>
                                <td>
                                    <button onclick="location.href = '../CartController?command=remove&productID=${list.getValue().getProduct().getProductId()}'" type="button">
                                        <i class="fas fa-exclamation-circle"></i>Remove</button>
                                </td>
                            </tr>
                        </c:forEach>
                        <tfoot>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>Grand Total</td>
                        <td id="grand_total"><%=cart.totalPrice()%></td>
                        <td></td>
                        </tfoot>


                    </table>
                </div>
                <div class="button-continue">
                    <button onclick="location.href = '${pageContext.request.contextPath}/productList'" id="continue" type="button">
                        <i class="fas fa-arrow-circle-left"></i>Continue Shopping</button>
                </div>
            </div>

        </section>
        <script src="../assets/js/store.js"></script>
    </body>
</html>
