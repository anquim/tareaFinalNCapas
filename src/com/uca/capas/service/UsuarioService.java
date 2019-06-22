package com.uca.capas.service;

import java.util.List;

import com.uca.capas.domain.Usuario;

public interface UsuarioService {
	public Usuario loginUsuario(String username, String password);

	public Usuario getUserById(Long id);

	public List<Usuario> findAllUsers();
}
