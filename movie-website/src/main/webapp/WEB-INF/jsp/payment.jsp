<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hello</h1>

<form action="BookSeat">
		<table>
			<tr>
				<jstl:forEach var="seatType" items="${seatSelected}">
					<td>${seatType.key}</td>

					<jstl:forEach var="seats" items="${seatType.value}">
						<td>${seats.key}<br> ${seats.value}
						</td>
					</jstl:forEach>
				</jstl:forEach>
			</tr>
			<tr>
				<td>${totalPrice}</td>
			</tr>
		</table>
		<input type="submit" value="proceed">
	</form>
</body>
</html>