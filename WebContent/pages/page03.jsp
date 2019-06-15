<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Anhaguera - Registrar</title>
</head>
<body>
<pre>Registrando...</pre>
<jsp:useBean id="bs" class="br.com.alexandrebarboza.anhaguera.beans" scope="page" />
<c:set var="dogs" value="${bs.getDogs()}" scope="page"/>
<c:if test="${sessionScope.dogs != null}">
   <c:set var="dogs" value="${sessionScope.dogs}" />
   <jsp:setProperty name="bs" property="dogs" value="${dogs}" />
</c:if>
<c:set var="dog" value="${bs.getMapFor(param.name, param.age, param.dog_name)}" scope="page" />
<c:set var="dogs" value="${bs.getDogs()}" scope="session"/>
<c:set var="count" value="${bs.getCounter()}" scope="session" />
<jsp:forward page="/pages/page01.jsp" />
</body>
</html>