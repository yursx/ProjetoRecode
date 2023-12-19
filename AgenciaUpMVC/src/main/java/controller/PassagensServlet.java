package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Scalar.String;

import dao.PassagensDAO;
import modelos.Passagens;


@WebServlet(urlPatterns = { "/passagens", "/passagens-create", "/passagens-update", "/passagens-delete" })
public class PassagensServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PassagensDAO pdao = new PassagensDAO();
	Passagens passagens = new Passagens();
	
    public PassagensServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/passagens":
			read(request, response);
			break;
		case "/passagens-create":
			create(request, response);
			break;
		case "/passagens-update":
			update(request, response);
			break;
		case "/passagens-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}

	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Passagens> passagens = pdao.read();

		request.setAttribute("Passagens", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/passagens/index.jsp");
		rd.forward(request, response);

	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		passagens.setId_passagens(Integer.parseInt(request.getParameter("id")));
		passagens.setId_cliente(request.getParameter("id_cliente"));
		passagens.setSaida_viagem(request.getParameter("saida_viagem"));
		passagens.setDestino_viagem(request.getParameter("destino_viagem"));
		passagens.setData_viagem(request.getParameter("data_viagem"));
		passagens.setPreco(Double.parseDouble(request.getParameter("preco")));

		pdao.create(passagens);
		response.sendRedirect("passagens");
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		passagens.setId_passagens(Integer.parseInt(request.getParameter("id")));
		passagens.setId_cliente(request.getParameter("id_cliente"));
		passagens.setSaida_viagem(request.getParameter("saida_viagem"));
		passagens.setDestino_viagem(request.getParameter("destino_viagem"));
		passagens.setData_viagem(request.getParameter("data_viagem"));
		passagens.setPreco(Double.parseDouble(request.getParameter("preco")));

		pdao.update(passagens);
		response.sendRedirect("passagens");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		pdao.delete(id);
		response.sendRedirect("passagens");
	}

}