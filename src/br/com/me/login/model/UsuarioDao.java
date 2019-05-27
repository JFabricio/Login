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

	
	public Usuario buscarUsuario(Usuario usuario) {
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("FROM Usuario WHERE email LIKE :paramLogin AND senha LIKE :paramSenha");
		query.setParameter("paramLogin", usuario.getEmail());
		query.setParameter("paramSenha", usuario.getSenha());
		
		List<Usuario> registros = query.getResultList();
		Usuario obj = null;
		
		if (!registros.isEmpty()) {
			obj = (Usuario) registros.get(0);
		}
		manager.close();
		factory.close();
		return obj;
		}
}
