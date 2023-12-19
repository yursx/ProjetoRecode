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

import dao.CadastroDAO;
import dao.ClienteDAO;
import dao.PassagensDAO;
import modelos.Cadastro;
import modelos.Cliente;
import modelos.Passagens;



@WebServlet(urlPatterns = { "/cadastro", "/cadastro-getCreate", "/cadastro-create", "/cadastro-edit", "/cadastro-update", "/cadastro-delete" })
public class CadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CadastroDAO cadao = new CadastroDAO();
	PassagensDAO pdao = new PassagensDAO();
    ClienteDAO cdao = new ClienteDAO();   
	Cadastro cadastro = new Cadastro();

    public CadastroServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/cadastro":
			read(request, response);
			break;
		case "/cadastro-getCreate":
			getCreate(request, response);
			break;
		case "/cadastro-create":
			create(request, response);
			break;
		case "/cadastro-edit":
			edit(request, response);
			break;
		case "/cadastro-update":
			update(request, response);
			break;
		case "/cadastro-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}

	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Cadastro> lista = cadao.read();

		request.setAttribute("listaCadastro", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/cadastro/index.jsp");
		rd.forward(request, response);

	}
	
	protected void getCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Passagens> listaPassagens = pdao.read();
		request.setAttribute("listaPassagens", listaPassagens);
		
		List<Cliente> listaCliente = cdao.read();
		request.setAttribute("listaCliente", listaCliente);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/cliente/create.jsp");
		rd.forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cliente cliente = cdao.readById(Integer.parseInt(request.getParameter("cliente")));
		Passagens passagens = pdao.readById(Integer.parseInt(request.getParameter("passagens")));
		
		String data = request.getParameter("data");
		
		cadastro = new Cadastro(data, cliente, passagens);
		
		cadao.create(cadastro);
		response.sendRedirect("cadastro");
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		cadastro = cadao.readById(id);
		
		request.setAttribute("cadastro", cadastro);
		
		List<Passagens> listaPassagens = pdao.read();
		request.setAttribute("listaLivros", listaPassagens);
		
		List<Cliente> listaCliente = cdao.read();
		request.setAttribute("listaCliente", listaCliente);

		RequestDispatcher rd = request.getRequestDispatcher("./views/clientes/update.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		cadastro.setId_cliente(Integer.parseInt(request.getParameter("id_cliente")));
		cadastro.setNome_cliente(cdao.readById(Integer.parseInt(request.getParameter("nome_cliente"))));
		cadastro.setEmail_cliente(cdao.readById(Integer.parseInt(request.getParameter("email_cliente"))));
		cadastro.setSenha_cliente(request.getParameter("senha_cliente"));
		cadastro.setTelefone(Integer.parseInt(request.getParameter("telefone")));
		cadastro.setCpf(Integer.parseInt(request.getParameter("CPF")));
		
		cadao.update(cadastro);
		response.sendRedirect("cadastro");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		cadao.delete(id);
		response.sendRedirect("cadastro");
	}

}