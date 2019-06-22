package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Usuario;
import com.uca.capas.repository.UsuarioRepository;
import com.uca.capas.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	UsuarioRepository usuarioRepository;

	@Override
	public Usuario loginUsuario(String username, String password) {
		return usuarioRepository.findByUUsuarioAndUClave(username, password);
	}

	@Override
	public List<Usuario> findAllUsers() {
		return usuarioRepository.findAll();
	}

	@Override
	public Usuario getUserById(Long id) {
		return usuarioRepository.findOne(id);
	}

}
