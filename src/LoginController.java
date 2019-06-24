

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Usuario;
import com.uca.capas.service.UsuarioService;

@Controller
public class LoginController {
	@Autowired
	UsuarioService usuarioService;

	@GetMapping("/")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		Usuario usuario = new Usuario();
		mav.addObject("usuario", usuario);
		mav.setViewName("login");
		return mav;
	}

	@PostMapping("/verifyCredentials")
	public ModelAndView validateCredentials(@Valid @ModelAttribute Usuario usuario, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.addObject("message", "Username or password is wrong! Please try again");
			mav.setViewName("login");
			return mav;
		}else if (usuarioService.loginUsuario(usuario.getuUsuario(), usuario.getuClave()) == null) {
			mav.addObject("message", "Username or password is wrong! Please try again");
			mav.setViewName("login");
			return mav;
		}
		return new ModelAndView("redirect:/facilities");
	}
}
