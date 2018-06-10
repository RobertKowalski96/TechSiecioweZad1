package rob.controller;

import rob.businesslogic.PriceCalculator;
import rob.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/summary")
public class ShopController extends HttpServlet {
    Double totalPrice, averagePrice;
    PriceCalculator priceCalculator = new PriceCalculator();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();
        for (int i = 1; i <= 4; i++) {

            if (req.getParameter("product" + i) != "" && req.getParameter("price" + i) != "") {
                products.add(new Product(req.getParameter("product" + i), Double.valueOf(req.getParameter("price" + i))));
            }

        }

        if(products.isEmpty()) {
            resp.sendRedirect("empty.jsp");
        }else {
            totalPrice = priceCalculator.totalPrice(products);
            averagePrice = priceCalculator.averagePrice(products);

            req.setAttribute("products", products);
            req.setAttribute("totalPrice", totalPrice);
            req.setAttribute("averagePrice", averagePrice);
            req.getRequestDispatcher("summary.jsp").forward(req, resp);
        }
    }

}
