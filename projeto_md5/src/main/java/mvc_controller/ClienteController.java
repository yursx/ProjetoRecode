package mvc_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc_model.Clientes;
import mvc_repository.ClienteRepository;

@Controller
@RequestMapping("/clientes")
public class ClienteController {
	
	@Autowired
	private ClienteRepository clienteRepository;

	@GetMapping
	public ModelAndView cliente() {
		ModelAndView modelAndView = new ModelAndView("views/clientes/index.html");
		modelAndView.addObject("clientes", clienteRepository.findAll());
		return modelAndView;
}
	
	@PostMapping("/cadastrar")
	public String cadastrar(Clientes cliente) {
		clienteRepository.save(cliente);

		return "redirect:/clientes";
	}
	
	@GetMapping("/{id}/editar")
	public ModelAndView editar(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView("cliente/edicao");
 
		Clientes cliente = clienteRepository.getReferenceById(id);
		modelAndView.addObject("cliente", cliente);
 
		return modelAndView;
	}
	
	@PostMapping("/{id}/editar")
	public ModelAndView editar(Clientes cliente) {	
		
		clienteRepository.save(cliente);
		ModelAndView modelAndView = new ModelAndView("redirect:/clientes");
 
		return modelAndView;
	}

	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable Long id) {
		clienteRepository.deleteById(id);

		return "redirect:/clientes";
	}

}
