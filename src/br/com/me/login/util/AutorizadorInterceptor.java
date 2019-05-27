package br.com.me.login.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {
		String uri = request.getRequestURI();
		//Autorizar a execução das pastas
		if (uri.contains("bootstrap") || 
			uri.contains("css") || 
			uri.contains("img") || 
			uri.contains("js") || 
		//Autorizar execução de controllers e paginas publicas 
			uri.endsWith("System_login_SHA256/") || 
			uri.endsWith("cadastro") ||
			uri.endsWith("home") || 
			uri.endsWith("save") || 
			uri.endsWith("efetuarLogin")) {
			return true;
		}
		if (request.getSession().getAttribute("usuarioLogado") != null) {
			return true;
		}
		
		//Autorizador não libera a entrada  ou execução de controllers 
		response.sendRedirect("/System_login_SHA256");
		return false;
	}
}
