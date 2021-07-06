import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "CorrectServlet", urlPatterns = "/correct")
public class CorrectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.getWriter().println("<h1>YOU GOT IT CORRECT</h1>");
        req.setAttribute("random",true);


        req.getRequestDispatcher("/guessOutcome.jsp").forward(req, resp);

        resp.getWriter().println("<h1>YOU GOT IT CORRECT</h1>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.getWriter().println("<h1>YOU GOT IT CORRECT</h1>");
        request.setAttribute("random",true);


        request.getRequestDispatcher("/guessOutcome.jsp").forward(request, response);

        response.getWriter().println("<h1>YOU GOT IT CORRECT</h1>");



    }
}