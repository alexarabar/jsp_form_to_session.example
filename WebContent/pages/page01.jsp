<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${param.username != null}">
	<c:set var="pessoa" value="${param.username}" scope="session" />
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Anhaguera - Listar</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr>
	<c:if test="${sessionScope.dogs != null}">
		<c:set var="dogs" value="${sessionScope.dogs}" scope="page" />
		<table border="0" cellspacing="1" cellPadding="2">
			<tr>
				<th>Nome</th>
				<th>Idade</th>
				<th>Cachorro</th>
			</tr>
			<c:forEach var="i" begin="0" end="${sessionScope.count}">
				<c:set var="color" scope="page" value="#f9f9f9" />
				<c:if test="${i%2 == 0}">
					<c:set var="color" scope="page" value="#eeeeee" />
				</c:if>
				<tr bgcolor="<c:out value="${color}"></c:out>">
					<c:forEach var="dog" items="${dogs[i]}">
						<td>${dog.value}</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<c:if test="${sessionScope.dogs == null}">
		<pre>Não há pessoas cadastradas.</pre>
	</c:if>
	<a href="page02.jsp">Nova Pessoa</a>
	<hr>
	<jsp:include page="footer.jsp" />
</body>
</html>
