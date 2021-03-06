package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Book;



public interface BookDAO {
Book findById(int id);
List<Book> findAll();
Book createNewBook (Book book);
Book updateBook(int id, Book book);
boolean deleteBook(int id);
}
