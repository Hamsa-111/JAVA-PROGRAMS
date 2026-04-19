/*6c. Build a servlet program to check the given number is prime number or not using HTML with step by step procedure.*/




package com.example;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/PrimeServlet")
public class P6c extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get input number
        int num = Integer.parseInt(request.getParameter("num"));
        boolean isPrime = true;

        // Prime logic
        if (num <= 1) {
            isPrime = false;
        } else {
            for (int i = 2; i <= num / 2; i++) {
                if (num % i == 0) {
                    isPrime = false;
                    break;
                }
            }
        }

        // Response output
        PrintWriter out = response.getWriter();
        out.println("<html><body>");

        if (isPrime) {
            out.println("<h2 style='color:green;'>" + num + " is a Prime Number</h2>");
        } else {
            out.println("<h2 style='color:red;'>" + num + " is NOT a Prime Number</h2>");
        }

        // Back Button
        out.println("<br><br>");
        out.println("<a href='index.html'>");
        out.println("<button>Back</button>");
        out.println("</a>");

        out.println("</body></html>");
    }
}
