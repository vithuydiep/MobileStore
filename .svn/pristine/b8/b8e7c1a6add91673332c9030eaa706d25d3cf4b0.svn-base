package Model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name= "product")
public class Product implements Serializable{

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productId;

    @Column(name="PRODUCT_NAME")
    private String productName;

    @Column(name="UNIT_PRICE")
    private int unitPrice;

    @Column(name="UNIT_IN_STOCK")
    private int unitInStock;

    @Column(name="DESCRIPTION")
    private String description;

    @Column(name="MANUFACTURER")
    private String manufacture;

    @Column(name="CATEGORY")
    private String category;
    
    @Column(name="PRODUCT_CONDITION")
    private String condition;

    @Column(name="PRODUCT_IMAGE")
    private String productImage;
    
    @Column(name="ID_ADMIN")
    private int adminID;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacture() {
        return manufacture;
    }

    public void setManufacture(String manufacture) {
        this.manufacture = manufacture;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
           
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }
    

    public Product(int productId, String productName, int unitPrice, int unitInStock, String description, String manufacture, String category, String productImage) {
        this.productId = productId;
        this.productName = productName;
        this.unitPrice = unitPrice;
        this.unitInStock = unitInStock;
        this.description = description;
        this.manufacture = manufacture;
        this.category = category;
        this.productImage = productImage;
    }

    public Product() {
    }
    
    

}
