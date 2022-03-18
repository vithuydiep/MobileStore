package Utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {

    private static SessionFactory sessionFactory;

    static {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
    }
    catch (Throwable ex) {

            System.err.println("Failed to create sessionFactory object." + ex);

        throw new ExceptionInInitializerError(ex);
    }

    }
    
    public static SessionFactory getSessionFactory()
    {
        return sessionFactory;
    }
}
