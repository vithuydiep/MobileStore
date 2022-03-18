/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Model.Product;
import Model.User;
import Utils.HibernateUtils;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author Napster
 */
public class UserService {
    public static User checkLogin(String username, String password)
    {
        Session session = HibernateUtils.getSessionFactory().openSession();
        Query query = null;
        String hql = "FROM User WHERE USERNAME like '%"+username+"%' and PASSWORD like '%"+password+"%'";
        query = session.createQuery(hql);
        List<User> users =  query.list();
        if(users.size()==0)
        {
            return null;
        }
        else
        {
            return users.get(0);
        }
    }
    public static List<Product> getListProduct() {
        Session session = HibernateUtils.getSessionFactory().openSession();
        Query query = session.createQuery("from Product");
        List<Product> list = query.list();
        return list;
    }
    
    public static Product getProductDetail(int proId) {
        Session session = HibernateUtils.getSessionFactory().openSession();
        Product pro = null;
        try {
            pro = session.get(Product.class, proId);
        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {

            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return pro;
    }
   
}
