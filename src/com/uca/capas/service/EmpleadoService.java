package com.uca.capas.service;

import java.util.List;

import com.uca.capas.domain.Empleado;

public interface EmpleadoService {
	public List<Empleado> findAllEmployees();

	public Empleado findEmployeeById(Long id);

	public Empleado saveEmployee(Empleado empleado);

	public void deleteEmployee(Long id);
}