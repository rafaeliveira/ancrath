<%@page import="br.com.correios.bsb.sigep.master.bean.cliente.EnderecoERP"%>
<%@page import="br.com.correios.bsb.sigep.master.bean.cliente.AtendeClienteService"%>
<%@page import="br.com.correios.bsb.sigep.master.bean.cliente.AtendeCliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 try
{
	 out.print("Chegou na consulta <br/> <br/>");
	 
	 String sCep = request.getParameter("cep");
	 out.print("Criou a string sCep <br/> <br/>");
	 
	 AtendeClienteService service = new AtendeClienteService();
	 out.print("Criou o servico <br/> <br/>");
	 
	 AtendeCliente port = service.getAtendeClientePort();
	 out.print("Criou a porta <br/> <br/>");
	 
	 out.print("Buscando o endereco do CEP "+sCep+ "<br/> <br/>");
	 
	 EnderecoERP result = port.consultaCEP(sCep);
	 
	 out.print("Rua: "+result.getEnd() + "<br/>");
	 out.print("Bairro: "+result.getBairro() + "<br/>");
	 out.print("Cidade: "+result.getCidade() + "<br/>");
	 out.print("UF: "+result.getUf() + "<br/>");
}
catch (Exception e)
{
	out.print("Erro: "+e.getMessage());
}
%>