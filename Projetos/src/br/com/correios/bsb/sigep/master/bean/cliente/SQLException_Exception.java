
package br.com.correios.bsb.sigep.master.bean.cliente;

import javax.xml.ws.WebFault;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.4-b01
 * Generated source version: 2.2
 * 
 */
@WebFault(name = "SQLException", targetNamespace = "http://cliente.bean.master.sigep.bsb.correios.com.br/")
public class SQLException_Exception
    extends java.lang.Exception
{

    /**
     * Java type that goes as soapenv:Fault detail element.
     * 
     */
    private SQLException faultInfo;

    /**
     * 
     * @param message
     * @param faultInfo
     */
    public SQLException_Exception(String message, SQLException faultInfo) {
        super(message);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @param message
     * @param faultInfo
     * @param cause
     */
    public SQLException_Exception(String message, SQLException faultInfo, Throwable cause) {
        super(message, cause);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @return
     *     returns fault bean: br.com.correios.bsb.sigep.master.bean.cliente.SQLException
     */
    public SQLException getFaultInfo() {
        return faultInfo;
    }

}