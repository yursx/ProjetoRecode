package mvc_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc_model.Passagens;
import mvc_repository.PassagensRepository;



@Controller
@RequestMapping("/passagens")
public class PassagensController {
    
	@Autowired
	private PassagensRepository passagensRepository;

	@GetMapping
	public ModelAndView passagens() {
		ModelAndView modelAndView = new ModelAndView("views/passagens/index.html");
		
		modelAndView.addObject("passagens", passagensRepository.findAll());
		modelAndView.addObject("passagens", new Passagens());

		return modelAndView;
	}

	@PostMapping("/cadastrar")
	public String cadastrar(Passagens passagens) {
		passagensRepository.save(passagens);

		return "redirect:/passagens";
	}

	@GetMapping("/{id}/editar")
	public ModelAndView editar(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView("passagens/edicao");
 
		Passagens passagens = passagensRepository.getReferenceById(id);
		modelAndView.addObject("passagens", passagens);
 
		return modelAndView;
	}
	
	@PostMapping("/{id}/editar")
	public ModelAndView editar(Passagens passagens) {	
		
		passagensRepository.save(passagens());
		ModelAndView modelAndView = new ModelAndView("redirect:/passagens");
 
		return modelAndView;
	}
	
	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable Long id) {
		passagensRepository.deleteById(id);

		return "redirect:/passagens";
	}

}