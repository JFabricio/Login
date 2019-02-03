package br.com.me.login.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.me.login.model.Usuario;
import br.com.me.login.model.UsuarioDao;
import br.com.me.login.util.Util;

@Controller
public class LoginController {

	@RequestMapping("cadastro")
	public String cadastoNovoUsuario() {
		return "front/telaCadastro";
	}
	
	
	@RequestMapping("save") //Salva novo usuario
	public String novoUsuario(Usuario usuario) {
		
		UsuarioDao dao = new UsuarioDao();
		Util util = new Util();
		
		usuario.setSenha(util.criptografia(usuario.getSenha()));
	
		dao.salvar(usuario);
		
		return "front/telaLogin";
	}
	
	
	@RequestMapping("verifica") //Verifica se usuario existe
	public String verificaLogin(Usuario usuario, Model model) {
		
		boolean verifica_email = false;
		boolean verifica_senha = false;
		
		Util util = new Util();
		UsuarioDao dao = new UsuarioDao();
		
		String email_digitado = usuario.getEmail();
		String senha_digitada = util.criptografia(usuario.getSenha()); ;
		
		List<String> lista_senha_banco = dao.listarSenha(); 
		List<String> lista_email_banco = dao.listarEmail(); 
		
		System.out.println("aqui");
		for(String lista_email : lista_email_banco) {
			
			if(email_digitado.equals(lista_email)) {
				verifica_email = true;
				System.out.println("aqui1");
			}
		}
		
		for(String lista_senha : lista_senha_banco) {
			
			if(senha_digitada.equals(lista_senha)) {
				verifica_senha = true;
				System.out.println("aqui2");
			}
		}
		
		if(verifica_email == true && verifica_senha == true) {
			
			System.out.println("aqui3");
			String email = usuario.getEmail();
			List<String> lista_usuario = dao.listar(email);
			
			System.out.println(lista_usuario);
			
			model.addAttribute("usuario", lista_usuario);
			
			System.out.println("aqui4");
			return "front/telaPerfil";
		}
		
		model.addAttribute("mensagem", "SENHA ou EMAIL estão incorretos");
		return "front/telaLogin";
	}
	
}
