<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="updatingBook.do" method="POST">
     <input type= "hidden" value="${book.id}" name="id">
    Title:
    <input type="text" name="description"/> <br>
    Description:
    <input type="text" name="purchasePrice"/> <br>

    
    <input type="submit" value="Update Book " />
  </form>
</body>
</html>