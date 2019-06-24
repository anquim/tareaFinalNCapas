package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

@Entity
@Table(schema = "public", name = "usuario")
public class Usuario {
	@Id
	@GeneratedValue(generator = "usuario_c_usuario_seq", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "usuario_c_usuario_seq", sequenceName = "public.usuario_c_usuario_seq", allocationSize = 1)
	@Column(name = "c_usuario")
	private Long codigoUsuario;
	
	@NotNull
	@Email
	@Column(name = "u_usuario")
	private String uUsuario;
	@NotNull
	@Column(name = "u_clave")
	private String uClave;
	
	public Usuario() {
	}

	public Long getcodigoUsuario() {
		return codigoUsuario;
	}

	public void setcodigoUsuario(Long codigoUsuario) {
		this.codigoUsuario = codigoUsuario;
	}

	public String getuUsuario() {
		return uUsuario;
	}

	public void setuUsuario(String uUsuario) {
		this.uUsuario = uUsuario;
	}

	public String getuClave() {
		return uClave;
	}

	public void setuClave(String uClave) {
		this.uClave = uClave;
	}

	public Usuario(Long codigoUsuario, String uUsuario, String uClave) {
		this.codigoUsuario = codigoUsuario;
		this.uUsuario = uUsuario;
		this.uClave = uClave;
	}


}
