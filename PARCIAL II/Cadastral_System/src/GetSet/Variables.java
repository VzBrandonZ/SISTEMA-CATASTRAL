/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GetSet;

/**
 *
 * @author VzWhite
 */
public class Variables {
    /*variables de la tabla notaria*/
    private static String id_not;
    private static String nombre_not;
    private static String representante_not;
    private static String calle_principal_not;
    private static String sitio_referencia_not;
    private static String telefono_not;
    /*variables de la tabla tecnico*/
    private static String id_persona;
    private static String nombre_persona;
    private static String apellido_persona;
    private static String doc_ident_persona;
    private static String email_persona;
    private static String telefono_persona;
    private static String celular_persona;
    private static String fecha_nac_persona;
    private static String est_civil_persona;
    private static String id_tecnico;
    private static String id_serv_tecnico;
    private static String fecha_cont_tecnico;
    private static String pago_mensual;
    private static String pago_anual;
    
    
    
    /*******************************/
    /*Get y Set de la tabla notaria*/
    /*** @return *****************************/
    public String getId_not() {
        return id_not;
    }
    public void setId_not(String id_not){
        Variables.id_not = id_not;
    }
    
    
    public String getNombre_not() {
        return nombre_not;
    }
    public void setNombre_not(String nombre_not){
        Variables.nombre_not = nombre_not;
    }
    
    
    public String getRepresentante_not() {
        return representante_not;
    }
    public void setRepresentante_not(String representante_not){
        Variables.representante_not = representante_not;
    }
    
    
    public String getCalle_principal_not() {
        return calle_principal_not;
    }
    public void setCalle_principal_not(String calle_principal_not){
        Variables.calle_principal_not = calle_principal_not;
    }
    
    
    public String getSitio_referencia_not() {
        return sitio_referencia_not;
    }
    public void setSitio_referencia_not(String sitio_referencia_not){
        Variables.sitio_referencia_not = sitio_referencia_not;
    }
    
    
    public String getTelefono_not() {
        return telefono_not;
    }
    public void setTelefono_not(String telefono_not){
        Variables.telefono_not = telefono_not;
    }
    
    /*******************************/
    /*Get y Set de la tabla Tecnico*/
    /*** @return *****************************/
    
    public String getId_persona() {
        return id_persona;
    }
    public void setId_persona(String id_persona){
        Variables.id_persona = id_persona;
    }
    
    
    
    public String getNombre_persona() {
        return nombre_persona;
    }
    public void setNombre_persona(String nombre_persona){
        Variables.nombre_persona = nombre_persona;
    }
    
    
    public String getApellido_persona() {
        return apellido_persona;
    }
    public void setApellido_persona(String apellido_persona){
        Variables.apellido_persona = apellido_persona;
    }
    
    
    
    public String getDoc_ident_persona() {
        return doc_ident_persona;
    }
    public void setDoc_ident_persona(String doc_ident_persona){
        Variables.doc_ident_persona = doc_ident_persona;
    }
    
    
    
    public String getEmail_persona() {
        return email_persona;
    }
    public void setEmail_persona(String email_persona){
        Variables.email_persona = email_persona;
    }
    
    
    
    public String getTelefono_persona() {
        return telefono_persona;
    }
    public void setTelefono_persona(String telefono_persona){
        Variables.telefono_persona = telefono_persona;
    }
    
    
    public String getCelular_persona() {
        return celular_persona;
    }
    public void setCelular_persona(String celular_persona){
        Variables.celular_persona = celular_persona;
    }
    
    
    
    public String getFecha_nac_persona() {
        return fecha_nac_persona;
    }
    public void setFecha_nac_persona(String fecha_nac_persona){
        Variables.fecha_nac_persona = fecha_nac_persona;
    }
    
    
    
    public String getEst_civil_persona() {
        return est_civil_persona;
    }
    public void setEst_civil_persona(String est_civil_persona){
        Variables.est_civil_persona = est_civil_persona;
    }
    
    
    public String getId_tecnico() {
        return id_tecnico;
    }
    public void setId_tecnico(String id_tecnico){
        Variables.id_tecnico = id_tecnico;
    }
    
    
    public String getId_serv_tecnico() {
        return id_serv_tecnico;
    }
    public void setId_serv_tecnico(String id_serv_tecnico){
        Variables.id_serv_tecnico = id_serv_tecnico;
    }
    
    
    
    public String getFecha_cont_tecnico() {
        return fecha_cont_tecnico;
    }
    public void setFecha_cont_tecnico(String fecha_cont_tecnico){
        Variables.fecha_cont_tecnico = fecha_cont_tecnico;
    }
    
    
    
    public String getPago_mensual() {
        return pago_mensual;
    }
    public void setPago_mensual(String pago_mensual){
        Variables.pago_mensual = pago_mensual;
    }
    
    
    
    public String getPago_anual() {
        return pago_anual;
    }
    public void setPago_anual(String pago_anual){
        Variables.pago_anual = pago_anual;
    }
}
