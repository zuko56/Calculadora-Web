//Leonardo Gonzaga

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/calculadora-servlet"})
public class CalculadoraServlet extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String valor1 = request.getParameter("valor1");
        String valor2 = request.getParameter("valor2");
        String operacao = request.getParameter("operacao");
        switch(operacao){
            case "soma":
            break;
            case "subtrair":
            break;
            case "multiplicar":
            break;
            case "dividir":
            break;
            
        
        
        }
        
        
        
        System.out.println("O valor do primeiro campo é: "+valor1);
        System.out.println("O valor do segundo campo é: "+valor2);
        
        
        
      request.getRequestDispatcher("/WEB-INF/CalcWeb.jsp").forward(request, response);
        
        
    }

    
}
