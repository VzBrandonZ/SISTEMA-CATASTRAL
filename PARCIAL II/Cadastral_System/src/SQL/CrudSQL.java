/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package SQL;
import GetSet.Variables;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author VzWhite
 */
public class CrudSQL extends ConexionPostgreSQL{
    java.sql.Statement st;
    ResultSet rs;
    Variables var = new Variables();
    
    
                                                      /*CRUD DE TECNICO*/
    /*Insert de Tecnico*/
    public void insertarTecnico(String nombre_persona, String apellido_persona, String doc_ident_persona, String email_persona, String telefono_persona, String celular_persona, String fecha_nac_persona, String est_civil_persona, String id_serv_tecnico, String fecha_cont_tecnico, String pago_mensual, String pago_anual) {
        try {
            Connection conexion = Conectar();
            st = conexion.createStatement();
            String sql = "Insert into tecnico(id_persona, nombre_persona, apellido_persona, doc_ident_persona,email_persona, telefono_persona,"
                    + "celular_persona, fecha_nac_persona, est_civil_persona,id_tecnico, id_serv_tecnico, fecha_cont_tecnico, pago_mensual, pago_anual)"
                    + "values(DEFAULT,'" + nombre_persona + "','" + apellido_persona + "','" + doc_ident_persona + "','" + email_persona + "','" + telefono_persona + "','" + celular_persona + "','"+ fecha_nac_persona + "','"+ est_civil_persona + "', DEFAULT,"+ id_serv_tecnico + ",'" + fecha_cont_tecnico + "'," + pago_mensual +"," + pago_anual + ");";
            st.execute(sql);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "El registro se guardo correctamente", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "El registro no se guardo" + e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /*Consultar Por Id de Tecnico*/
    public void consultaIdTecnico(String doc_ident_persona){
        try {
            Connection conexion = Conectar();
            st = conexion.createStatement();
            String sql="select * from tecnico where doc_ident_persona='"+doc_ident_persona+"'";
            rs=st.executeQuery(sql);
            if (rs.next()) 
            {
                var.setId_persona(rs.getString("id_persona"));
                var.setNombre_persona(rs.getString("nombre_persona"));
                var.setApellido_persona(rs.getString("apellido_persona"));
                var.setDoc_ident_persona(rs.getString("doc_ident_persona"));
                var.setEmail_persona(rs.getString("email_persona"));
                var.setTelefono_persona(rs.getString("telefono_persona"));
                var.setCelular_persona(rs.getString("celular_persona"));       
                var.setFecha_nac_persona(rs.getString("fecha_nac_persona"));
                var.setEst_civil_persona(rs.getString("est_civil_persona"));
                var.setId_tecnico(rs.getString("id_tecnico"));
                var.setId_serv_tecnico(rs.getString("id_serv_tecnico"));        
                var.setFecha_cont_tecnico(rs.getString("fecha_cont_tecnico"));
                var.setPago_mensual(rs.getString("pago_mensual"));
                var.setPago_anual(rs.getString("pago_anual"));


            }else{
                var.setId_persona(rs.getString(""));
                var.setNombre_persona(rs.getString(""));
                var.setApellido_persona(rs.getString(""));
                var.setDoc_ident_persona(rs.getString(""));
                var.setEmail_persona(rs.getString(""));
                var.setTelefono_persona(rs.getString(""));
                var.setCelular_persona(rs.getString(""));       
                var.setFecha_nac_persona(rs.getString(""));
                var.setEst_civil_persona(rs.getString(""));
                var.setId_tecnico(rs.getString(""));
                var.setId_serv_tecnico(rs.getString(""));        
                var.setFecha_cont_tecnico(rs.getString(""));
                var.setPago_mensual(rs.getString(""));
                var.setPago_anual(rs.getString(""));
                JOptionPane.showMessageDialog(null, "No se encontro registro","Sin registro",JOptionPane.INFORMATION_MESSAGE);
            }
            st.close();
            conexion.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error en el sistema de busqueda","Error buscqueda",JOptionPane.ERROR_MESSAGE);
            var.setId_persona("");
            var.setNombre_persona("");
            var.setApellido_persona("");
            var.setDoc_ident_persona("");
            var.setEmail_persona("");
            var.setTelefono_persona("");
            var.setCelular_persona("");       
            var.setFecha_nac_persona("");
            var.setEst_civil_persona("");
            var.setId_tecnico("");
            var.setId_serv_tecnico("");        
            var.setFecha_cont_tecnico("");
            var.setPago_mensual("");
            var.setPago_anual("");
        } 
    }
    
    /*Modificar Tecnico*/
    public void modificarTecnico(String nombre_persona, String apellido_persona, String doc_ident_persona, String email_persona, String telefono_persona, String celular_persona, String fecha_nac_persona, String est_civil_persona, String id_serv_tecnico, String fecha_cont_tecnico, String pago_mensual, String pago_anual){
        try {
             Connection conexion = Conectar();
             st=conexion.createStatement();
             String sql="update tecnico set nombre_persona='"+nombre_persona+"',apellido_persona='"+apellido_persona+"',doc_ident_persona='"+doc_ident_persona+"',email_persona='"+email_persona+"'  "
                     + ",telefono_persona='"+telefono_persona+"',celular_persona='"+celular_persona+"',fecha_nac_persona='"+fecha_nac_persona+"',est_civil_persona='"+est_civil_persona+"',id_serv_tecnico="+id_serv_tecnico+",fecha_cont_tecnico='"+fecha_cont_tecnico+"',pago_mensual="+pago_mensual+",pago_anual="+pago_anual+" where doc_ident_persona='"+doc_ident_persona+"'";
             st.executeUpdate(sql);
             JOptionPane.showMessageDialog(null, "El registro fue modificado correctamente", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
             st.close();
            conexion.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "El registro no se modifico" + e, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    /*Eliminar Tecnico*/
    public void eliminarTecnico(String doc_ident_persona){
        try {
            Connection conexion = Conectar();
            st=conexion.createStatement();
            String sql="delete from tecnico where doc_ident_persona='"+doc_ident_persona+"' ";
            st.executeUpdate(sql);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "El registro fue eliminado correctamente", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "El registro no se Elimino " + e, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    
    
                                                      /*CRUD DE NOTARIA*/
    /*Insert de Notaria*/
    public void insertarNotaria(String id_not, String nombre_not, String representante_not, String calle_principal_not, String sitio_referencia_not, String telefono_not) {
        try {
            Connection conexion = Conectar();
            st = conexion.createStatement();
            String sql = "Insert into notaria(id_not, nombre_not, representante_not, calle_principal_not, sitio_referencia_not, telefono_not)"
                    + "values(DEFAULT,'" + nombre_not + "','" + representante_not + "','" + calle_principal_not + "','" + sitio_referencia_not + "','" + telefono_not +"');";
            st.execute(sql);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "El registro se guardo correctamente", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "El registro no se guardo" + e, "Mensaje", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /*Consultar Por Id de Notaria*/
    public void consultaIdNotaria(String id_not){
        try {
            Connection conexion = Conectar();
            st = conexion.createStatement();
            String sql="select * from notaria where id_not='"+id_not+"'";
            rs=st.executeQuery(sql);
            if (rs.next()) 
            {
                var.setId_not(rs.getString("id_not"));
                var.setNombre_not(rs.getString("nombre_not"));
                var.setRepresentante_not(rs.getString("representante_not"));
                var.setCalle_principal_not(rs.getString("calle_principal_not"));
                var.setSitio_referencia_not(rs.getString("sitio_referencia_not"));
                var.setTelefono_not(rs.getString("telefono_not"));

            }else{
                var.setId_not(rs.getString(""));
                var.setNombre_not(rs.getString(""));
                var.setRepresentante_not(rs.getString(""));
                var.setCalle_principal_not(rs.getString(""));
                var.setSitio_referencia_not(rs.getString(""));
                var.setTelefono_not(rs.getString(""));
                JOptionPane.showMessageDialog(null, "No se encontro registro","Sin registro",JOptionPane.INFORMATION_MESSAGE);
            }
            st.close();
            conexion.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error en el sistema de busqueda","Error buscqueda",JOptionPane.ERROR_MESSAGE);
            var.setId_not("");
            var.setNombre_not("");
            var.setRepresentante_not("");
            var.setCalle_principal_not("");
            var.setSitio_referencia_not("");
            var.setTelefono_not("");
        } 
    }
    
    /*Modificar Notaria*/
    public void modificarNotaria(String id_not, String nombre_not, String representante_not, String calle_principal_not, String sitio_referencia_not, String telefono_not){
        try {
             Connection conexion = Conectar();
             st=conexion.createStatement();
             String sql="update notaria set nombre_not='"+nombre_not+"',representante_not='"+representante_not+"',calle_principal_not='"+calle_principal_not+"',sitio_referencia_not='"+sitio_referencia_not+"'"
                     + ",telefono_not='"+telefono_not+"' where id_not="+id_not;
             st.executeUpdate(sql);
             JOptionPane.showMessageDialog(null, "El registro fue modificado correctamente", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
             st.close();
            conexion.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "El registro no se modifico" + e, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    /*Eliminar Tecnico*/
    public void eliminarNotaria(String id_not){
        try {
            Connection conexion = Conectar();
            st=conexion.createStatement();
            String sql="delete from notaria where id_not="+id_not;
            st.executeUpdate(sql);
            st.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "El registro fue eliminado correctamente", "Mensaje", JOptionPane.INFORMATION_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "El registro no se Elimino " + e, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
}


    
