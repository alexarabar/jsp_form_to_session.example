<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Anhaguera - Login</title>
</head>

<%
  // request.getSession().removeAttribute("dogs");
%>

<body>
   <h2>Login</h2>
   <hr />
   <form action="${pageContext.request.contextPath}/pages/page01.jsp" method="post" accept-charset="ISO-8859-1">
    <table border="0" cellpadding="2" cellspacing="1" bgcolor="#f9f9f9">
      <tr>
        <td>Usuário:</td>
        <td><input type="text" name="username" /></td>
      </tr>
      <tr>
        <td>Senha:</td>
        <td><input type="password" name="password" /></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Entrar" /></td> 
      </tr>
    </table>
  </form>
</body>
</html>