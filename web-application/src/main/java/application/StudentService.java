package lesson6;

import java.util.List;
import java.util.ArrayList;
import java.sql.*;

/**
 * StudentService
 */
public class StudentService {

    public List<Student> getStudents() throws Exception {

        List<Student> students = new ArrayList<Student>();

        DB db = new DB();
        Connection con = null;
        String query = "SELECT * FROM students_lesson6_2023_2024 "
         + " LEFT JOIN departments_lesson6_2023_2024 "
          + " on students_lesson6_2023_2024.department_id=departments_lesson6_2023_2024.id;";

        try {

            con = db.getConnection();

            PreparedStatement stmt = con.prepareStatement(query);
            // skipping setting parameters (do not need)
            
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                // students
                students.add (new Student(rs.getString("students_lesson6_2023_2024.am"),
                 rs.getString("students_lesson6_2023_2024.name"),
                  rs.getString("students_lesson6_2023_2024.surname"),
                  rs.getString("students_lesson6_2023_2024.email"),
                   new Department(rs.getInt("departments_lesson6_2023_2024.id"),
                    rs.getString("departments_lesson6_2023_2024.name"))));

              //  deps.add( new Department(rs.getInt("id"), rs.getString("name")) );

            }

            rs.close();
            stmt.close();
            db.close();

            return students;

            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();    
            } catch (Exception e) {
                
            }
            
        }       

    } // end of getStudents


    public void insertStudent(Student student) throws Exception {

        DB db = new DB();
        Connection con = null;
        String sql = "INSERT INTO students_lesson6_2023_2024 (am,name,surname,email,department_id) VALUES (?,?,?,?,?);";

        try {
            
            con = db.getConnection();
            PreparedStatement smt = con.prepareStatement(sql);

            // setting parameters
            smt.setString(1, student.getAm());
            smt.setString(2, student.getName());
            smt.setString(3, student.getSurname());
            smt.setString(4, student.getEmail());
            smt.setInt(5, student.getDepartment().getId());
            
            smt.executeUpdate();

            smt.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
             db.close();   
            } catch (Exception e) {
                
            }           
            
        }

    }

    public void deleteStudent(String am) throws Exception {

        DB db = new DB();
        Connection con = null;
        String sql = "DELETE FROM students_lesson6_2023_2024 where am=?;";

        try {
            
            con = db.getConnection();
            PreparedStatement smt = con.prepareStatement(sql);

            // setting parameters
            smt.setString(1, am);            
            
            smt.executeUpdate();

            smt.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
             db.close();   
            } catch (Exception e) {
                
            }           
            
        }

    }

    public void updateStudent(Student student) throws Exception {

        DB db = new DB();
        Connection con = null;
        String sql = "UPDATE students_lesson6_2023_2024 SET name=?, surname=?, email=?, department_id=? WHERE am=?";

        try {
            
            con = db.getConnection();
            PreparedStatement smt = con.prepareStatement(sql);

            // setting parameters            
            smt.setString(1, student.getName());
            smt.setString(2, student.getSurname());
            smt.setString(3, student.getEmail());
            smt.setInt(4, student.getDepartment().getId());
            smt.setString(5, student.getAm());
            
            smt.executeUpdate();

            smt.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
             db.close();   
            } catch (Exception e) {
                
            }           
            
        }

    }

    public Student findStudentByAM(String am) throws Exception {
       

        DB db = new DB();
        Connection con = null;
        String query = "SELECT * FROM students_lesson6_2023_2024 "
         + " LEFT JOIN departments_lesson6_2023_2024 "
          + " on students_lesson6_2023_2024.department_id=departments_lesson6_2023_2024.id WHERE am=?;";

        try {

            con = db.getConnection();

            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, am);
            
            ResultSet rs = stmt.executeQuery();
            

            if (!rs.next()) {
               
                rs.close();
                stmt.close();
                return null;               
               // throw new Exception("No student with am: " + am + " found!");

            }
            
            return new Student(rs.getString("students_lesson6_2023_2024.am"),
                 rs.getString("students_lesson6_2023_2024.name"),
                  rs.getString("students_lesson6_2023_2024.surname"),
                  rs.getString("students_lesson6_2023_2024.email"),
                   new Department(rs.getInt("departments_lesson6_2023_2024.id"),
                    rs.getString("departments_lesson6_2023_2024.name")));

            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();    
            } catch (Exception e) {
                
            }
            
        }   

    }

    public List<Student> searchStudents(String keyword) throws Exception {
       

        List<Student> students = new ArrayList<Student>();
        DB db = new DB();
        Connection con = null;
        String query = "SELECT * FROM students_lesson6_2023_2024 LEFT JOIN departments_lesson6_2023_2024 "
         + " on students_lesson6_2023_2024.department_id=departments_lesson6_2023_2024.id "
         + " WHERE students_lesson6_2023_2024.am=? "
         + " OR students_lesson6_2023_2024.name=? " 
         + " OR students_lesson6_2023_2024.surname=? " 
         + " OR students_lesson6_2023_2024.email=? " 
         + " OR departments_lesson6_2023_2024.name=?;";

        try {

            con = db.getConnection();

            PreparedStatement stmt = con.prepareStatement(query);

            // setting values in parameters
            stmt.setString(1, keyword);
            stmt.setString(2, keyword);
            stmt.setString(3, keyword);
            stmt.setString(4, keyword);
            stmt.setString(5, keyword);
            
            ResultSet rs = stmt.executeQuery();            

            while (rs.next()) {

                students.add (new Student(rs.getString("students_lesson6_2023_2024.am"),
                 rs.getString("students_lesson6_2023_2024.name"),
                  rs.getString("students_lesson6_2023_2024.surname"),
                  rs.getString("students_lesson6_2023_2024.email"),
                   new Department(rs.getInt("departments_lesson6_2023_2024.id"),
                    rs.getString("departments_lesson6_2023_2024.name"))));

            }

            rs.close();
            stmt.close();
            db.close();

            return students;

            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();    
            } catch (Exception e) {
                
            }
            
        }   

    }

}