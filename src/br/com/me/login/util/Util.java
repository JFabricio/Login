package br.com.me.login.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;

import org.springframework.web.multipart.MultipartFile;

public class Util {
 
	public static String obterMomentoAtual() {
		Calendar c = Calendar.getInstance();
	
		int ano = c.get(Calendar.YEAR);
		int mes = c.get(Calendar.MONTH);
		int dia = c.get(Calendar.DAY_OF_MONTH);
		int hora = c.get(Calendar.HOUR_OF_DAY);
		int minuto = c.get(Calendar.MINUTE);
		int segundo = c.get(Calendar.SECOND);
		String momentoUpload = ano +"-"+ (mes+1) +"-"+ dia + "-" + hora +"-"+ minuto +"-"+ segundo;
		return momentoUpload;
	
	
	}
	
	public static boolean fazerUploadImagem(MultipartFile imagem) {
		boolean sucessoUpload = false;
		if (!imagem.isEmpty()) {
			String nomeArquivo = imagem.getOriginalFilename();
			try {
				// Criando o diretório para armazenar o arquivo
				String workspaceProjeto = "/home/jfabricio/Área de Trabalho/System_login_SHA256";
				File dir = new File(workspaceProjeto + "/WebContent/resources/img");
				if (!dir.exists()) {
					dir.mkdirs();
				}
				// Criando o arquivo no diretório
				File serverFile = new File(
					dir.getAbsolutePath() + File.separator + obterMomentoAtual() + " - " + nomeArquivo);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(imagem.getBytes());
				stream.close();
				System.out.println("Arquivo armazenado em:" + serverFile.getAbsolutePath());
				System.out.println("Você fez o upload do arquivo " + nomeArquivo + " com sucesso");
				sucessoUpload = true;
			} catch (Exception e) {
				System.out.println("Você falhou em carregar o arquivo " + nomeArquivo + " => " + e.getMessage());
			}
		} else {
			System.out.println("Você falhou em carregar o arquivo porque ele está vazio ");
		}
		return sucessoUpload;
	}
	
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
