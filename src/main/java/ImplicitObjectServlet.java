import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/implicit")
public class ImplicitObjectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("weather", "cloudy"); // REQUEST_SCOPE
        req.getSession().setAttribute("favourite_color", "blue"); // SESSION_SCOPE
        getServletContext().setAttribute("appName", "JSP Demo"); // APPLICATION_SCOPE

        req.getRequestDispatcher("implicitobjects.jsp").forward(req, resp);



        //request.getSession()

    }
}
