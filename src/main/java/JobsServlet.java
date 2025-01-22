

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.JspFactory;

import com.dubaicity.data.Job;
import com.dubaicity.data.JobService;

/**
 * Servlet implementation class JobsServlet
 */

public class JobsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		JobService jobService = new JobService();
		List<Job> jobs = jobService.getJobs();
		request.setAttribute("jobs", jobs);
		RequestDispatcher dispatcher = (RequestDispatcher) request.getRequestDispatcher("/jobs.jsp"); 
        try {
			dispatcher.forward((ServletRequest)request, (ServletResponse)response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			((Throwable) e).printStackTrace();
		} 
	}

	/**
	 * @throws IOException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
