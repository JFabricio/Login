package br.com.me.login.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;



public class UsuarioDao {
	
	private static final String PERSISTENCE_UNIT = "system_login_sha256";

	public void salvar(Usuario usuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(usuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}
	public List<String> listarSenha() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		
		@SuppressWarnings("unchecked")
		List<String> lista = manager.createQuery("SELECT senha FROM Usuario ORDER BY nome ").getResultList();
		manager.close();
		factory.close();

		return lista;
		}
	
	
	
	public List<String> listarEmail() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		
		@SuppressWarnings("unchecked")
		List<String> lista = manager.createQuery("SELECT email FROM Usuario ORDER BY nome ").getResultList();
		manager.close();
		factory.close();

		return lista;
		}

	
	public List<String> listar(String email) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		
		Query query = null;
		
		query = manager.createQuery("FROM Usuario WHERE email LIKE :paramEmail");
		query.setParameter("paramEmail", "%" + email + "%");
		
		
		System.out.println("aqui44");
		
		@SuppressWarnings("unchecked")
		List<String> lista = query.getResultList();
		
		manager.close();
		factory.close();
		
		return lista;
		}
}
