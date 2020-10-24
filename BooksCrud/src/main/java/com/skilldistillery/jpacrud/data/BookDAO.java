package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Book;



public interface BookDAO {
Book findById(int id);
List<Book> findAll();
}
