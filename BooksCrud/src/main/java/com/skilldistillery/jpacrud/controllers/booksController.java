package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping(path="createBook.do", method = RequestMethod.GET )
	public String addBook(Model model,Book book) {

		model.addAttribute("book", dao.createNewBook(book));
		
		return "bookAdded";
	}
	@RequestMapping("updateBook.do")
	public ModelAndView updateButton (Integer id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("book", dao.findById(id));
		mv.setViewName("updatingBook");
		return mv;
	}
	@RequestMapping("updatingBook.do")
	public ModelAndView updating (Integer id, String description, Double purchasePrice ) {
		ModelAndView mv = new ModelAndView();
		Book book = dao.findById(id);
		book.setDescription(description);
		book.setPurchasePrice(purchasePrice);
		mv.addObject("book", dao.updateBook(id, book));
		mv.setViewName("updated");
		return mv;
	}
	@RequestMapping("deleteBook.do")
	public ModelAndView delete(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("book", dao.deleteBook(id));
		mv.setViewName("deleted");
		return mv;
	}
	
	
	
}
