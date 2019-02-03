package br.com.me.login.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Util {

	
	public String criptografia(String senha) {


		
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256"); //Definindo qual criptografia usar
			byte messageDigest[] = md.digest(senha.getBytes("UTF-8")); //Converte a senha 
			
			
			StringBuilder sb = new StringBuilder();
			
			for(byte b : messageDigest) {
				
				sb.append(String.format("%02x", 0xFF & b)); //Mascara de Formatação para que não haja numeros negativos
			}
			
			 senha = sb.toString();
			
			
		} catch (NoSuchAlgorithmException e) {
			System.out.println("Não foi possivel implementar a criptografia");
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			System.out.println("Não foi possivel converter o hash para UTF-8");
			e.printStackTrace();
		}
		

		return senha;
		
	
	}
}
