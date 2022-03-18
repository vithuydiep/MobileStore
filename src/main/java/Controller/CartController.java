/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Cart;
import Model.Item;
import Model.Product;
import Services.UserService;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "CartController", urlPatterns = {"/CartController"})
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session = request.getSession();
        String command = request.getParameter("command");
        Cart cart = (Cart) session.getAttribute("cart");
        String productID;
        Integer idProduct;
        Product product;
        switch (command) {
            case "plus":
                productID = request.getParameter("productID");
                idProduct = Integer.parseInt(productID);
                product = UserService.getProductDetail(idProduct);
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                if (cart.getCartItems().containsKey(idProduct)) {
                    cart.plusToCart(idProduct, new Item(product, cart.getCartItems().get(idProduct).getQuantity()), quantity);
                } else {
                    cart.plusToCart(idProduct, new Item(product, quantity), quantity);
                }
                break;
            case "remove":
                productID = request.getParameter("productID");
                idProduct = Integer.parseInt(productID);
                cart.removeToCart(idProduct);
                break;
            case "clear":
                cart.clearCart();
                break;

        }
        session.setAttribute("cart", cart);
        response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
