<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.infinite.hiblibrary.Books" %>
    <%@ page import="java.util.List" %>
     <%@ page import="com.infinite.hiblibrary.LibraryDAO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/><br/>
	<c:set var="searchtype" value="${param.searchtype}"/>
	<c:set var="searchvalue" value="${param.searchvalue}"/>
	<jsp:useBean id="beanDao" class="com.infinite.hiblibrary.LibraryDAO"/>
		<br/> Select books to issue: <br/> 
	
	<form action="Issue.jsp" method="post">
	<table border='3'>
		<tr>
		 <th>Id </th>
		 <th>Name</th>
		 <th>Author</th>
		 <th>Edition</th>
		 <th>Dept</th>
		 <th>Total Books</th>
		 <th> Select </th>
	    </tr>
	  <c:forEach var="books" items="${beanDao.searchBooks(searchtype,searchvalue)}">
	  	
	  	<c:set var="btotal" value="${books.totalBooks}" />
	  	<tr>
	  		<td><c:out value="${books.id}"/> </td>
	  		<td><c:out value="${books.name}"/> </td>
	  		<td><c:out value="${books.author}"/> </td>
	  		<td><c:out value="${books.edition}"/> </td>
	  		<td><c:out value="${books.dept}"/> </td>
	  		<td><c:out value="${books.totalBooks}"/> </td>
	  		<c:if test="${btotal > 0}">
	  		<td><input type='checkbox' name="bookid" value="${books.id}" /></td>
	  		
	  		</c:if>
	  	</tr>
	  
	  </c:forEach>
	 </table>
	 <br/>
	 <input type='submit' value='Issue Books' >
	</form>
</body>
</html>