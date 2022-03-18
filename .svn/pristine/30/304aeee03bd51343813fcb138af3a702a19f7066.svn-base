/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Product;
import Model.User;
import Services.AdminService;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Napster
 */
@WebServlet(name = "AddNewProduct", urlPatterns = {"/AddNewProduct"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
       maxFileSize = 1024 * 1024 * 10, // 10MB
       maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AddNewProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public static final String SAVE_DIRECTORY = "assets/image";
 
    public AddNewProduct() {
       super();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddNewProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNewProduct at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
            PrintWriter out = response.getWriter();
            // Đường dẫn tuyệt đối tới thư mục gốc của web app.
           String appPath = request.getServletContext().getRealPath("");
           appPath = appPath.replace('\\', '/');
           //Path path = Paths.get(appPath);
           //Path parentPath = path.getParent().getParent().getParent();
           //System.out.println("Parentpath: " + parentPath.toString());
           /*
           // Thư mục để save file tải lên.
           String fullSavePath = null;
           if (parentPath.endsWith("/")) {
               fullSavePath = parentPath + SAVE_DIRECTORY;
           } else {
               fullSavePath = parentPath +"/"+SAVE_DIRECTORY;
           }*/
           // Thư mục để save file tải lên.
           String fullSavePath_sever = null;
           if (appPath.endsWith("/")) {
               fullSavePath_sever = appPath + SAVE_DIRECTORY;
           } else {
               fullSavePath_sever = appPath +"/"+SAVE_DIRECTORY;
           }
           /*
           // Tạo thư mục nếu nó không tồn tại.
           File fileSaveDir = new File(fullSavePath);
           if (!fileSaveDir.exists()) {
               fileSaveDir.mkdir();
           }*/
           // Tạo thư mục nếu nó không tồn tại.
           File fileSaveDir_sever = new File(fullSavePath_sever);
           if (!fileSaveDir_sever.exists()) {
               fileSaveDir_sever.mkdir();
           }
           //System.out.println("fullSavePath: " + fullSavePath);
           String file_name_avatar = "";
           // Danh mục các phần đã upload lên (Có thể là nhiều file).
           for (Part part : request.getParts()) {
               String fileName = extractFileName(part);
               if (fileName != null && fileName.length() > 0) {
                   //String filePath = fullSavePath + File.separator + fileName;
                   String filePath_sever = fullSavePath_sever + File.separator + fileName;
                   //System.out.println("Write attachment to file: " + filePath);
  
                   // Ghi vào file.
                   //part.write(filePath);
                   part.write(filePath_sever);
                   file_name_avatar = fileName;
                   System.out.println("filename-avatar:"+ file_name_avatar);
               }
           }
           
           // Upload thành công.
           Product pr = new Product();
           pr.setProductName(request.getParameter("productName").toString().trim());
           pr.setCategory(request.getParameter("category").toString().trim());
           pr.setDescription(request.getParameter("description").toString().trim());
           pr.setManufacture(request.getParameter("manufacture").toString().trim());
           pr.setProductImage(SAVE_DIRECTORY +"/"+file_name_avatar);
           pr.setUnitInStock(Integer.parseInt(request.getParameter("unitInStock").toString().trim()));
           pr.setUnitPrice(Integer.parseInt(request.getParameter("unitPrice").toString().trim()));
           String condition = request.getParameter("condition");
           if(condition.equals("new"))
           {
               pr.setCondition("NEW");
           }
           else if(condition.equals("old"))
           {
               pr.setCondition("OLD");
           }
           else
           {
               pr.setCondition("REFURBISHED");
           }
           User currentUser = (User) request.getSession().getAttribute("currentUser");
           pr.setAdminID(currentUser.getId());
           //add new product
           if(AdminService.insert(pr))
           {
               request.setAttribute("status", "success");
           }
           else
           {
               request.setAttribute("status", "failed");
           }
           request.getRequestDispatcher("/jsp/product.jsp").forward(request, response);
             
    }

    private String extractFileName(Part part) {
       // form-data; name="file"; filename="C:\file1.zip"
       // form-data; name="file"; filename="C:\Note\file2.zip"
       String contentDisp = part.getHeader("content-disposition");
       String[] items = contentDisp.split(";");
       for (String s : items) {
           if (s.trim().startsWith("filename")) {
               // C:\file1.zip
               // C:\Note\file2.zip
               String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
               clientFileName = clientFileName.replace("\\", "/");
               int i = clientFileName.lastIndexOf('/');
               // file1.zip
               // file2.zip
               return clientFileName.substring(i + 1);
           }
       }
       return null;
   }

}
