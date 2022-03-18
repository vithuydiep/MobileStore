/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Vi Diep
 */
public class Cart {
    private HashMap<Integer, Item> cartItems;
    
    public Cart(){
        cartItems = new HashMap<>();
    }

    public Cart(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public HashMap<Integer, Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }
    
    
    
    public void plusToCart(Integer key, Item item, int quantity){
        boolean check = cartItems.containsKey(key);
        if(check){
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old+ quantity);
            cartItems.put(key, item);
        }else
        {
            cartItems.put(key, item);
        }
    }
    public void removeToCart(Integer key) {
        boolean check = cartItems.containsKey(key);
        if (check) {
            cartItems.remove(key);
        }
    }
     public int countItem() {
        return cartItems.size();
    }
     public double totalPrice(){
         double sum = 0;
         for(Map.Entry<Integer, Item> list : cartItems.entrySet()){
             sum += list.getValue().getProduct().getUnitPrice() * list.getValue().getQuantity();
         }
         return sum;
     }

    public void clearCart() {
        cartItems.clear();
    }
     
    
}
