<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
    <c:when test="${! empty book}">

    <p>book added</p>
    </c:when>
    <c:otherwise>
      <p>book not added</p>
    </c:otherwise>
  </c:choose>
</body>
</html>