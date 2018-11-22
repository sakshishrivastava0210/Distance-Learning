import java.io.File;  
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 1000,
        maxRequestSize = 1024 * 1024 * 1000)   

public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PrintWriter out = null;
    Connection con = null;
    PreparedStatement ps = null;
    HttpSession session = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain;charset=ISO-8859-1");
        try {
            out = response.getWriter();
            session = request.getSession(false);
            String folderName = "resources";
            String uploadPath = request.getServletContext().getRealPath("") + folderName;
            File dir = new File(uploadPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            String filePart = request.getParameter("file");
            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            Timestamp date = new Timestamp(System.currentTimeMillis());
          
            System.out.println("Path: " + uploadPath);
            System.out.println("Name: " + firstName);
        
            try {
                con = Database.getConnection();
                System.out.println("Connection done!");
                String sql = "insert into record(firstname,lastname,path,date)values(?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, firstName);
                ps.setString(2, lastName);              
                ps.setString(3, filePart);
                ps.setTimestamp(4, date);
                int status = ps.executeUpdate();
                if (status > 0) {                   
                    String msg =  "File uploaded successfully!";
                    request.setAttribute("msg", msg);
                    RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
                    rd.forward(request, response);
                    System.out.println("File uploaded successfully!");
                    System.out.println("Uploaded Path: " + uploadPath);
                }
            } catch (SQLException e) {
                out.println("Exception: " + e);
                System.out.println("Exception1: " + e);
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    out.println(e);
                }
            }

        } catch (IOException | ServletException e) {
            out.println("Exception: " + e);
            System.out.println("Exception2: " + e);
        }
    }
}
