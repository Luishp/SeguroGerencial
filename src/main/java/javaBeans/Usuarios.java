/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaBeans;

/**
 *
 * @author Stark
 */
public class Usuarios {

    private String nombre;
    private String pass;
    private String rol;
    
    private final String[] listaUsuarios={"luis","mauricio"};
    private final String[] listaPassword={"123","123"};
    private final String[] listaRol={"admin","master"};
    //constructor de la clase
    public Usuarios() {
    }
    
    public String getNombre() {
        for(int i=0;i<listaUsuarios.length;i++){
            if(nombre.equals(listaUsuarios[i]))
                return nombre;
        }
        return "No existe el usuario";
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPass() {
        for(int i=0;i<listaPassword.length;i++){
            if(pass.equals(listaPassword[i]))
                return pass;
        }
        return "No existe la contrasenna";
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRol() {
        for(int i=0;i<listaRol.length;i++){
            if(rol.equals(listaRol[i]))
                return rol;
        }
        return "No existe el rol";
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
    public boolean existe(String user,String pass){
        boolean existencia=false;
        for(int i=0;i<listaUsuarios.length;i++){
            if(user.equals(listaUsuarios[i]) && pass.equals(listaPassword[i])){
                return existencia=true;
            }
        }
        return existencia;
    }
    
}
