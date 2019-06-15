<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Anhaguera - Incluir</title>
</head>
<body>
  <jsp:include page="header.jsp" />
  <hr>
  <form action="page03.jsp" method="post" accept-charset="ISO-8859-1">
    <table border="0" cellpadding="2" cellspacing="1" bgcolor="#f9f9f9">
      <tr>
        <td>Nome:</td>
        <td><input type="text" name="name" /></td>
      </tr>
      <tr>
        <td>Idade:</td>
        <td><input type="text" name="age" /></td>
      </tr>
      <tr>
        <td>Nome do cachorro:</td>
        <td><input type="text" name="dog_name" /></td>
      </tr>
      <tr>
        <td>Raça do cachorro:</td>
        <td><input type="text" name="dog_breed" /></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Inserir" /></td> 
      </tr>
    </table>
  </form>
  
  <hr>
  <jsp:include page="footer.jsp" />
</body>
</html>