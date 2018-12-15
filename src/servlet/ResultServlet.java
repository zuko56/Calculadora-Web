package servlet;

import java.io.IOException;
import model.Math;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/result")
public class ResultServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String valor1 = request.getParameter("valor1");
		System.out.println("valor 1 " + valor1);
        String valor2 = request.getParameter("valor2");
        System.out.println("valor 2 " + valor2);
        String operacao = request.getParameter("operacao");
        System.out.println("operacao " + operacao);
        
        double a = Double.parseDouble(valor1);
        double b = Double.parseDouble(valor2);
        double resultado = 0.0;
        
        switch(operacao) {
            case "soma":
            	resultado = Math.sum(a, b);
                break;
            case "subtrair":
            	resultado = Math.sub(a, b);
                break;
            case "dividir":
            	resultado = Math.div(a, b);
                break;
            case "multiplicar":
            	resultado = Math.times(a, b);
                break;
        }
        
        System.out.println("O valor do primeiro campo é: " + valor1);
        System.out.println("O valor do segundo campo é: " + valor2);
        
		response.sendRedirect("calculadora01.jsp");
		
		
	}
		
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
