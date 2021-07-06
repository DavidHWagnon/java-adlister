import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")

public class PizzaOrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String size = request.getParameter("size");
        System.out.println("Pizza size: " + size);

        String crust = request.getParameter("crust");
        System.out.println("Pizza crust: " + crust);

        String sauce = request.getParameter("sauce");
        System.out.println("Pizza sauce: " + sauce);

        String[] toppings = request.getParameterValues("topping-selection");
        for (String topping : toppings){
            System.out.println("Toppings: " + topping);
        }

        String address = request.getParameter("address");
        System.out.println("Delivery address: " + address);

        response.sendRedirect("/pizza-order.jsp");

    }

}
