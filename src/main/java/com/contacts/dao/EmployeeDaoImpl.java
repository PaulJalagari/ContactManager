package com.contacts.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.contacts.entity.EmployeeEntity;

@Repository
public class EmployeeDaoImpl implements EmployeeDAO  {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	//@PreAuthorize("hasRole('ROLE_USER')")
	public void addEmployee(EmployeeEntity employee) {
		//System.out.println(((User)SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getAuthorities());
		this.sessionFactory.getCurrentSession().save(employee);
	}

	@SuppressWarnings("unchecked")
	public List<EmployeeEntity> getAllEmployees() {
		return this.sessionFactory.getCurrentSession().createQuery("from Employee").list();
	}

	//@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void deleteEmployee(Integer employeeId) {
		EmployeeEntity employee = (EmployeeEntity) sessionFactory.getCurrentSession().load(
				EmployeeEntity.class, employeeId);
        if (null != employee) {
        	this.sessionFactory.getCurrentSession().delete(employee);
        }
	}
}
