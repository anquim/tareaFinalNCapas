package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Empleado;
import com.uca.capas.repository.EmpleadoRepository;
import com.uca.capas.service.EmpleadoService;

@Service
public class EmpleadoServiceImpl implements EmpleadoService {

	@Autowired
	EmpleadoRepository empleadoRepository;

	@Override
	public List<Empleado> findAllEmployees() {
		return empleadoRepository.findAll();
	}

	@Override
	public Empleado findEmployeeById(Long id) {
		return empleadoRepository.findOne(id);
	}

	@Override
	public Empleado saveEmployee(Empleado empleado) {
		return empleadoRepository.save(empleado);
	}

	@Override
	public void deleteEmployee(Long id) {
		empleadoRepository.delete(id);
	}

}