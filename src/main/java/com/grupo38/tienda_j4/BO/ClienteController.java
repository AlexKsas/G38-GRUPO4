package com.grupo38.tienda_j4.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tienda_j4.DAO.ClienteDAO;
import com.grupo38.tienda_j4.DTO.ClienteVO;


@RestController
public class ClienteController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarcliente")
	public void registrarCliente(ClienteVO client) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.registrarCliente(client);
	}

	@GetMapping("/consultarcliente")
	public ArrayList<ClienteVO> consultarClientes(String cedula) {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.consultarCliente(cedula);
	}

	@GetMapping("/listarcliente")
	public ArrayList<ClienteVO> listaDeClientes() {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.listaDeClientes();
	}
	@DeleteMapping("/eliminarcliente")
	public void eliminarClientes(Integer cedula_cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.eliminarCliente(cedula_cliente);
	}
	
	@PutMapping("/actualizarcliente")
	public void actualizarClientes(ClienteVO client) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.actualizarCliente(client);
	}
	
	

}
