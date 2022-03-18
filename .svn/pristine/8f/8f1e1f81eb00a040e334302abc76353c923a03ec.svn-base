/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Cart;
import Model.User;
import Services.UserService;
import Utils.UserRole;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Napster
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/login.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String err = "";
        String url = "/jsp/login.jsp";
        User currentUser = UserService.checkLogin(username, password);

        if (currentUser == null) {
            //login error
            err += "Invalid username or password";
//                    response.getWriter().write(err);
        } else {
            //login success
            if (currentUser.getRole().equals("USER")) {
                Cart cart = new Cart();
                session.setAttribute("cart", cart);
                url = "/productList";
            } else if (currentUser.getRole().equals("ADMIN")) {
                url = "/jsp/product.jsp";
            }
            session.setAttribute("currentUser", currentUser);

        }
        request.setAttribute("err", err);
        // forward request and response objects to specified URL
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
