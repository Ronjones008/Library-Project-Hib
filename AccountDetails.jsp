<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="com.infinite.hiblibrary.LibraryDAO"/>
<jsp:include page="menu.jsp"></jsp:include>
 <center>
  	<table border="3" align="left" >
  	  <tr>
  	  	<th>BookID</th>
  	  	<th>UserName</th>
  	  	<th>From Date </th>
  	  	<th>TID</th>
  	  </tr>
  	  <c:forEach var="books" items="${beanDao.accountBook(sessionScope.user)}">
  	    <tr>
  	    <td><c:out value="${books.bookId}"/></td>
  	    <td><c:out value="${books.userName}"/></td>
  	    <td><c:out value="${books.fromDate}"/></td>
  	    <td><c:out value="${books.tid}"/></td>
  	    </tr>
  	  </c:forEach>
  	 
	 </table>
  	</table>
 </center>
 
 
</body>
</html>