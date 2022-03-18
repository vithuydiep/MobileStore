<%-- 
    Document   : login
    Created on : Aug 19, 2021, 8:57:08 AM
    Author     : Napster
--%>

<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Store</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/style/style.css">
</head>
<body>
    <header>
        <div class="header">
            <div class="container">
                <div class="header-title">
                    <h1 class="title">Mobile Store</h1>
                </div>
            </div>
        </div>
        
    </header>
    <section class="middle-page">
        <div class="container">
            <form action="${pageContext.request.contextPath}/login" class="login" id="form" method="post" onsubmit="return validate()">
                <div class="title-form">
                    Please sign in
                </div>
                <div class="content-form">
                    <div class="container">
                        <small id="small">${err}</small>
                        <input type="text" name="username" placeholder="Username" required maxlength="16" id="username">
                        <input type="password" name="password" placeholder="Password" maxlength="16" required id="password">
                        <button id="submit" type="submit">Login</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>