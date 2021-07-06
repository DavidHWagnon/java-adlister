import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;


@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getRequestDispatcher("/guess.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        int ranNum = new Random().nextInt(3) + 1;
//    int ranNum = Integer.parseInt(request.getParameter("ranNum"));
        int guessNum = Integer.parseInt(request.getParameter("guessNum"));


        if (guessNum == 0) {
            request.getRequestDispatcher("/guess.jsp").forward(request, response);
        } else {

            System.out.printf("Random num is: %d \n", ranNum);
            System.out.printf("Your guess was: %d\n", guessNum);

            if (ranNum == guessNum) {
                request.getRequestDispatcher("/correct").forward(request, response);
            } else {
                request.getRequestDispatcher("/incorrect").forward(request, response);
            }


        }
    }
}