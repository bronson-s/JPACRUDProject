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
    @Transactional
	@Override
	public Book updateBook(int id, Book book) {
	  Book upbook = em.find(Book.class, id);
	  upbook.setDescription(book.getDescription());
	  upbook.setPurchasePrice(book.getPurchasePrice());
		return upbook;
	}

	@Override
	public boolean deleteBook(int id) {
		Book book = em.find(Book.class, id);
		em.remove(book);
		boolean wasDeleted = ! em.contains(book);
		return wasDeleted;
	}
	
	
	

}
