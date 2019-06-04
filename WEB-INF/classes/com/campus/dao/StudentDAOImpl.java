package com.campus.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.campus.model.Student;

public class StudentDAOImpl implements StudentDAO
{
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addStudent(Student u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(u);
	}

	@Override
	public void updateStudent(Student u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(u);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> listStudent() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Student> studentList =  session.createQuery("from Student").list();
		return studentList;
	}

	@Override
	public Student getStudentById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Student u=(Student) session.load(Student.class, new Integer(id));
		if(null == u) {
			u=new Student();
		}
		return u;
	}

	@Override
	public void removeStudent(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Student u=(Student) session.load(Student.class,new Integer(id));
		if(null !=u) {
			session.delete(u);
		}
		
	}

	@Override
	public long getStudentCount() {
		Session session = this.sessionFactory.getCurrentSession();
		Long count = (Long)session.createQuery("select count(*) from Student student").uniqueResult();
		
		return count;
	}
	

}
