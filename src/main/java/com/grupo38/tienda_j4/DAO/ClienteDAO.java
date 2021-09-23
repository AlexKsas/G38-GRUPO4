package com.grupo38.tienda_j4.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.grupo38.tienda_j4.DTO.ClienteVO;

/**
 * Clase que permite el acceso a la base de datos
 *
 */
public class ClienteDAO {
	/**
	 * Permite registrar un Cliente nuevo
	 * 
	 * @param user
	 */
	public void registrarCliente(ClienteVO client) {
		//llama y crea una instancia de la clase encargada de hacer la conexión
		Conexion conex = new Conexion();

		try {
			//sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
			
			//String que contiene la sentencia insert a ejecutar
			String sentencia = "INSERT INTO usuarios VALUES(" 
					+ client.getCedula_cliente() + "," + "'"
					+ client.getDireccion_cliente() + "'," + "'"
					+ client.getEmail_cliente() + "'," + "'" 
					+ client.getNombre_cliente() + "'," + "'" 
					+ client.getTelefono_cliente() + "'" 
					+ ");";
			
			//se ejecuta la sentencia en la base de datos
			estatuto.executeUpdate(sentencia);
			//impresión en consola para verificación 
			System.out.println("Registrado " + sentencia);
			//cerrando la sentencia y la conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	/**
	 * permite consultar el Cliente asociado al user enviado como parametro
	 * 
	 * @param documento
	 * @return
	 */
	public ArrayList<ClienteVO> consultarCliente(String cliente) {	
		//lista que contendra el o los clientes obtenidos
		ArrayList<ClienteVO> listaclientes = new ArrayList<ClienteVO>();		
		//instancia de la conexión
		Conexion conex = new Conexion();
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM usuarios where cedula_usuario = ? ");		
			// se cambia el comodin ? por el dato que ha llegado en el parametro de la funcion
			consulta.setString(1, cliente);			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();			
			//cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				ClienteVO Cliente = new ClienteVO();
				Cliente.setCedula_cliente(Integer.parseInt(res.getString("cedula_usuario")));
				Cliente.setDireccion_cliente(res.getString("email_usuario"));
				Cliente.setEmail_cliente(res.getString("nombre_usuario"));
				Cliente.setNombre_cliente(res.getString("pasword"));
				Cliente.setTelefono_cliente(res.getString("usuario"));

				listaclientes.add(Cliente);
			}
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaclientes;
	}

	/**
	 * permite consultar la lista de todos los clientes
	 * 
	 * @return
	 */
	public ArrayList<ClienteVO> listaDeClientes() {
		//lista que contendra el o los clientes obtenidos
		ArrayList<ClienteVO> listaclientes = new ArrayList<ClienteVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				ClienteVO Clientes = new ClienteVO();
				Clientes.setCedula_cliente(Integer.parseInt(res.getString("cedula_usuario")));
				Clientes.setDireccion_cliente(res.getString("email_usuario"));
				Clientes.setEmail_cliente(res.getString("nombre_usuario"));
				Clientes.setNombre_cliente(res.getString("password"));
				Clientes.setTelefono_cliente(res.getString("usuario"));
				
				listaclientes.add(Clientes);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los usuarios");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los usuarios");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaclientes;
	}

	public void eliminarCliente(Integer cedula_cliente) {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from usuarios where cedula_usuario=" + cedula_cliente + ";";
			
			//impresion de verificación
			System.out.println("Registrado " + sentencia);
			
			//ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);
			
			//cerrando sentencia y conexión
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public void actualizarCliente(ClienteVO client) {
		
		//instancia de conexion
		Conexion conex = new Conexion();

		try {
			//inicializando sentencia
			Statement estatuto = conex.getConnection().createStatement();
			
			//String con la sentencia a ejecutar
			String sentencia = "UPDATE clientes "
					+ "SET telefono_cliente = '"+client.getTelefono_cliente()+"',"
					+ "direccion_cliente = '"+client.getDireccion_cliente()+"',"
					+ "email_cliente = '"+client.getEmail_cliente()+"',"
					+ "nombre_cliente = '"+client.getNombre_cliente()+"' "
					+ "WHERE cedula_cliente = "+client.getCedula_cliente()+";";
					
			//ejecuta la sentencia 
			estatuto.executeUpdate(sentencia);
			
			//verificación por consola de la sentencia
			System.out.println("Registrado " + sentencia);
			
			//cerrando sentencia y conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar  el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

}