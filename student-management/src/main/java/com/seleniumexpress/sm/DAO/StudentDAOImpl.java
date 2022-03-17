package com.seleniumexpress.sm.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.seleniumexpress.sm.api.Student;
import com.seleniumexpress.sm.rowmapper.StudentRowMapper;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Student> loadStudents() {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM students;";
		List<Student> theListOfStudent = jdbcTemplate.query(sql, new StudentRowMapper());

		return theListOfStudent;
	}

	@Override
	public void saveStudent(Student student) {

		Object[] sqlParameters = { student.getName(), student.getMobile(), student.getCountry() };

		String sql = "insert into students(name,mobile,country) values(?,?,?)";
		jdbcTemplate.update(sql, sqlParameters);
		System.out.println("1 record updated successfully...");

	}

	@Override
	public Student getStudent(int id) {

		String sql = "Select * from Students where id = ?";
		Student student = jdbcTemplate.queryForObject(sql, new StudentRowMapper(), id);
		return student;
	}

	@Override
	public void update(Student student) {

		String sql = "update students set name=?, mobile=?, country=? where id=?";
		jdbcTemplate.update(sql, student.getName(), student.getMobile(), student.getCountry(), student.getId());
	}

	@Override
	public void deleteStudent(int id) {
		
		String sql = "delete from students where id=?";
		jdbcTemplate.update(sql, id);
	}

}
