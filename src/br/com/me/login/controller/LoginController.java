package br.com.me.login.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.me.login.model.Usuario;
import br.com.me.login.model.UsuarioDao;
import br.com.me.login.util.Util;

@Controller
public class LoginController {

	@RequestMapping("cadastro")
	public String cadastoNovoUsuario() {
		return "front/telaCadastro";
	}

	@RequestMapping("home")
	public String home() {
		return "front/telaLogin";
	}

	@RequestMapping("perfil")
	public String perfil() {
		return "front/telaPerfil";
	}

	@RequestMapping("save") // Salva novo usuario
	public String novoUsuario(Usuario usuario,@RequestParam("file")MultipartFile imagem ,Model model) {

		if (Util.fazerUploadImagem(imagem)) {
			usuario.setImagem(Util.obterMomentoAtual() + " - " +
			imagem.getOriginalFilename());
			}
		
		UsuarioDao dao = new UsuarioDao();
		Util util = new Util();

		usuario.setSenha(util.criptografia(usuario.getSenha()));

		List<String> listaEmail = dao.listarEmail();

		for (String lista : listaEmail) {
			if (lista.equals(usuario.getEmail())) {
				model.addAttribute("menssagem2", "Usuario Possui Cadastro");

				return "front/telaLogin";
			}
		}
		model.addAttribute("menssagem2", "Usuario Cadastrado Com Sucesso");
		dao.salvar(usuario);

		return "front/telaLogin";
	}

	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario usuario, HttpSession session, Model model) {

		UsuarioDao dao = new UsuarioDao();
		Util util = new Util();
		
		usuario.setSenha(util.criptografia(usuario.getSenha()));
		
		Usuario usuarioLogado = dao.buscarUsuario(usuario);

		

		if (usuarioLogado != null) {
			session.setAttribute("usuarioLogado", usuarioLogado);
			
			
			return "front/telaPerfil";
		}

		model.addAttribute("menssagem2", "Não foi encontrado um usuário com o login e senha informados.");
		return "front/telaLogin";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "front/telaLogin";
	}

}
