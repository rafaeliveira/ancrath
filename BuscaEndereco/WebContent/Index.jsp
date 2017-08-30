<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta de Endereco</title>
</head>
<body>
<form action="ConsultaWebService.jsp" method="post">
<label>CEP: </label><input type="text" name="cep" placeholder="00000-000" required pattern="\d{5}-?\d{3}"/>
<button type="submit" name="buscar" width="300">Buscar</button>
</form>
</body>
</html>