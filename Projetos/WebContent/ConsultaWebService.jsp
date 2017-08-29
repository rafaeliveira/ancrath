<%@page import="br.com.correios.bsb.sigep.master.bean.cliente.EnderecoERP"%>
<%@page import="br.com.correios.bsb.sigep.master.bean.cliente.AtendeClienteService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
 try
{
	 String sCep = request.getParameter("cep");
	 AtendeClienteService service = new AtendeClienteService();
	 
	 br.com.correios.bsb.sigep.master.bean.cliente.AtendeCliente port = service.getAtendeClientePort();
	 
	 out.print("Buscando o endereco do CEP "+sCep+ "<br/> <br/>");
	 
	 br.com.correios.bsb.sigep.master.bean.cliente.EnderecoERP result = port.consultaCEP(sCep);
	 
	 out.print("Rua: "+result.getEnd() + "<br/>");
	 out.print("Bairro: "+result.getBairro() + "<br/>");
	 out.print("Cidade: "+result.getCidade() + "<br/>");
	 out.print("UF: "+result.getUf() + "<br/>");
}
catch (Exception e)
{
	
}
%>