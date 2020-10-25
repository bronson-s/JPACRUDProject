<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show book</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div>
<p>**** info regarding publisher, publish year, and purchase price are in reference to my specific copies in reference
not original data. Books with out a purchase price were gifts or acquired elsewhere.*****</p> <br>

<h1>TITLE: ${book.title}, Author: ${book.author}  </h1> <br>

<ul>
<li>Published: ${book.yearPublished }</li>
<li>Publisher: ${book.publisher }</li>
<li>Page count: ${book.pageCount }</li>
<li>Purchase price: ${book.purchasePrice}</li>
</ul> <br>
 
 <p>${book.description }</p>

</div>


<div>
	<form action="updateBook.do" method="POST">
    <input type= "hidden" value="${book.id}" name="id">
         <input type="submit" value="Update Book" />
	</form>
</div>	

<div>
    <form action="deleteBook.do" method="POST">
    <input type= "hidden" value="${book.id}" name="id">
         <input type="submit" onclick="return confirm('Are you sure?')" value="Delete Book" />
	</form> 
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>