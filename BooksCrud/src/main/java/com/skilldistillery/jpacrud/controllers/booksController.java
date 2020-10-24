package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.BookDAO;
import com.skilldistillery.jpacrud.entities.Book;

@Controller
public class booksController {
	@Autowired
	private BookDAO dao;

	@RequestMapping(path="/")
	public String index(Integer bid, Model model) {
	List<Book> books = dao.findAll();
	model.addAttribute("books", books);
	return "index";
}
	@RequestMapping("getBook.do")
	public String showFilm(Integer bid, Model model) {
		Book book = dao.findById(bid);
		model.addAttribute("book", book);
		return "show";
		
	}
	
}
