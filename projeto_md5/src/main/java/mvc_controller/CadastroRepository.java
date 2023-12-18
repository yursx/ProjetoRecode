package mvc_controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc_model.Cadastro;

@Controller
@RequestMapping("/cadastro")
public class CadastroRepository {
	
	@Autowired
	private CadastroRepository cadastroRepository;

	@GetMapping
	public ModelAndView cadastro() {
		ModelAndView modelAndView = new ModelAndView("views/cadastro/index.html");
		modelAndView.addObject("cadastro", CadastroRepository.findAll());
		return modelAndView;
}
	
	private static Object findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@PostMapping("/cadastrar")
	public String cadastrar(Cadastro cadastro) {
		CadastroRepository.save(cadastro);

		return "redirect:/clientes";
	}
	
	@GetMapping("/{id}/editar")
	public ModelAndView editar(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView("cadastro/edicao");
 
		Cadastro cadastro = CadastroRepository.getReferenceById(id);
		modelAndView.addObject("cadastro", cadastro);
 
		return modelAndView;
	}
	
	private static Cadastro getReferenceById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@PostMapping("/{id}/editar")
	public ModelAndView editar(Cadastro Cadastro) {	
		
		CadastroRepository.save(Cadastro);
		ModelAndView modelAndView = new ModelAndView("redirect:/Cadastro");
 
		return modelAndView;
	}

	private static void save(Cadastro cadastro) {
		// TODO Auto-generated method stub
		
	}

	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable Long id) {
		CadastroRepository.deleteById(id);

		return "redirect:/Cadastro";
	}

	private static void deleteById(Long id) {
		// TODO Auto-generated method stub
		
	}

}