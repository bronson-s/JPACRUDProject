package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {
	public Book(String title, String author, Integer yearPublished, Integer pageCount, String publisher,
			String description, Double purchasePrice) {
		super();
		this.title = title;
		this.author = author;
		this.yearPublished = yearPublished;
		this.pageCount = pageCount;
		this.publisher = publisher;
		this.description = description;
		this.purchasePrice = purchasePrice;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String author;
	@Column(name="year_published")
	private Integer yearPublished;
	@Column(name="page_count")
	private Integer pageCount;
    private String publisher;
    private String description;
    @Column(name="purchase_price")
    private Double purchasePrice;
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getYearPublished() {
		return yearPublished;
	}

	public void setYearPublished(Integer yearPublished) {
		this.yearPublished = yearPublished;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(Double purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Book() {
		super();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Book [id=");
		builder.append(id);
		builder.append(", title=");
		builder.append(title);
		builder.append(", author=");
		builder.append(author);
		builder.append(", yearPublished=");
		builder.append(yearPublished);
		builder.append(", pageCount=");
		builder.append(pageCount);
		builder.append(", publisher=");
		builder.append(publisher);
		builder.append(", description=");
		builder.append(description);
		builder.append(", purchasePrice=");
		builder.append(purchasePrice);
		builder.append("]");
		return builder.toString();
	}
}
