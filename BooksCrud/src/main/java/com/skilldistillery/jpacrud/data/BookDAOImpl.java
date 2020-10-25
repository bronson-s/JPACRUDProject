package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Book;
@Transactional
@Service
public class BookDAOImpl implements BookDAO {
	@PersistenceContext
	private EntityManager em;
	
	
	
	@Override
	public Book findById(int id) {
	
		return em.find(Book.class, id);
	}

	@Override
	public List<Book> findAll() {
		List<Book> books = null;
		String jpql = "SELECT b FROM Book b";
		books=em.createQuery(jpql, Book.class).getResultList();
	
		return books;
	}
	@Transactional
	@Override
	public Book createNewBook(Book book) {
		em.persist(book);
	return book;
	}

}
