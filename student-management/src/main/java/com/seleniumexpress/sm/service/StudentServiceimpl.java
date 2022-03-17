package com.seleniumexpress.sm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seleniumexpress.sm.DAO.StudentDAO;
import com.seleniumexpress.sm.api.Student;

@Service
public class StudentServiceimpl implements StudentService {

	@Autowired
	private StudentDAO StudentDAO;
	
	@Override
	public List<Student> loadStudents() {
		
		List<Student> studentList = StudentDAO.loadStudents();
		
		return studentList;
	}

	@Override
	public void saveStudent(Student student) {
		
		StudentDAO.saveStudent(student);
		
	}

	@Override
	public Student getStudent(int id) {
		
		return StudentDAO.getStudent(id);
	}

	@Override
	public void update(Student student) {
		
		StudentDAO.update(student);
	}

	@Override
	public void deleteStudent(int id) {
		
		StudentDAO.deleteStudent(id);
		
	}

}
