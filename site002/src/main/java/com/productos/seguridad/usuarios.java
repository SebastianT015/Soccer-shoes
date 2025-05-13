package com.productos.seguridad;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.productos.datos.Conexion;

public class usuarios {
	private int id;
	private int perfil;
	private int estadoCivil;
	private String cedula;
	private String nombre;
	private String correo;
	private String Clave;
	public usuarios() {
		// TODO Auto-generated constructor stub
	
	}
	public usuarios(int nperfiles, String nnombre, String ncedula, int nestado, String ncorreo, String nclave) {
		// TODO Auto-generated constructor stub
		this.nombre = nnombre;
		this.cedula = ncedula;
		this.estadoCivil = nestado;
		this.correo = ncorreo;
		this.Clave = nclave;
		this.perfil = nperfiles;
	}
	public usuarios(int nperfiles, String nnombre, String ncedula, int nestado, String ncorreo) {
		// TODO Auto-generated constructor stub
		this.nombre = nnombre;
		this.cedula = ncedula;
		this.estadoCivil = nestado;
		this.correo = ncorreo;
		this.perfil = nperfiles;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPerfil() {
		return perfil;
	}
	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}
	public int getEstadoCivil() {
		return estadoCivil;
	}
	public void setEstadoCivil(int estadoCivil) {
		this.estadoCivil = estadoCivil;
	}
	public String getCedula() {
		return cedula;
	}
	public void setCedula(String cedula) {
		this.cedula = cedula;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getClave() {
		return Clave;
	}
	public void setClave(String clave) {
		Clave = clave;
	}
	public boolean verificarUsuario(String ncorreo, String nclave){ 
		boolean respuesta=false; 
		String sentencia= "Select * from tb_usuario where correo_us='"+ncorreo+ 
		"' and clave_us='"+nclave+"';"; 
		//System.out.print(sentencia); 
		try { 
			ResultSet rs; 
			Conexion clsCon=new Conexion(); 
			rs=clsCon.Consulta(sentencia); 
			if(rs.next()){  
				respuesta=true; 
				this.setCorreo(ncorreo); 
				this.setClave(nclave); 
				this.setPerfil(rs.getInt(2));  		 
				this.setNombre(rs.getString(4)); 
			}else{ 
				respuesta=false; 
				rs.close(); 
			} 
		}catch(Exception ex){ 
			System.out.println( ex.getMessage()); 
		} 
		return respuesta; 
	}
	public String ingresarCliente(){
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuario (id_per, id_est, nombre_us,"
		+ "cedula_us,correo_us,clave_us) "
		+ "VALUES(?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,2);
			pr.setInt(2, this.getEstadoCivil());
			pr.setString(3, this.getNombre());
			pr.setString(4, this.getCedula());
			pr.setString(5, this.getCorreo());
			pr.setString(6, this.getClave());
			if(pr.executeUpdate()==1){
				result="Insercion correcta";
			}
			else
			{
				result="Error en insercion";
			}
		}catch(Exception ex){
			result=ex.getMessage();
			System.out.print(result);
		}
		finally{
			try{
			 pr.close();
			 con.getConexion().close();
			}catch(Exception ex){
			 System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	public String ingresarEmpleados(){
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuario (id_per, id_est, nombre_us,"
		+ "cedula_us,correo_us,clave_us) "
		+ "VALUES(?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,this.getPerfil());
			pr.setInt(2, this.getEstadoCivil());
			pr.setString(3, this.getNombre());
			pr.setString(4, this.getCedula());
			pr.setString(5, this.getCorreo());
			pr.setString(6,"653421");
			if(pr.executeUpdate()==1){
				result="Insercion correcta";
			}
			else
			{
				result="Error en insercion";
			}
		}catch(Exception ex){
			result=ex.getMessage();
			System.out.print(result);
		}
		finally{
			try{
			 pr.close();
			 con.getConexion().close();
			}catch(Exception ex){
			 System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	public boolean verificarClave(String aClave) {
		boolean flag= false;
		return flag;
		
	}
	
	
}

