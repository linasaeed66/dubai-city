
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class servlet1 extends HttpServlet {
    public void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html; charSet-UTF-8");
        PrintWriter out=response.getWriter();
        try {
            out=response.getWriter();
            out.println("<html>");
            out.println("<body>");
            out.println("<h1>servlet: NewServlet at "+request.getContextPath()+"</h1>");
            String user=request.getParameter("user");
            out.println("<h2> Welcome "+user+"</h2>");
            out.println("</body>");
            out.println("</html>");
        } catch (Exception e) {
            e.printStackTrace();
            // TODO: handle exception
        } 
        finally{
            out.close();
            }
        }

        @Override
        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            processRequest(request, response);
        }

        @Override
        public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            processRequest(request, response);
        }
    
    
}
