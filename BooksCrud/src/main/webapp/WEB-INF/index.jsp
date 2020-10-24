<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOKS </title>
</head>
<body>
<h1>Welcome to Library</h1>
<h3>find by id</h3>
<form action="getBook.do" method="GET">
  Book ID: <input type="text" name="bid" />
  <input type="submit" value="Show Book" />
</form>
 
 
 
<c:forEach var="book" items= "${books}" >

<a href="getBook.do?bid=${book.id}">${book.title}</a> <br>

</c:forEach>

</body>
</html>