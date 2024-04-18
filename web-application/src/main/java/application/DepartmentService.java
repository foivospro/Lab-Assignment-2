package lesson6;

import java.util.List;
import java.util.ArrayList;
import java.sql.*;

/**
 * DepartmentService provides all the necessary methods related to departments.
 * In future lesson we will change the code in order to provide data from a Database.
 * 
 * @author Sofoklis Stouraitis <a href="mailto:sofos@aueb.gr">sofos@aueb.gr</a>
 * @version 1.0
 */
public class DepartmentService {
    
    /**
     * Returns all available departments.
     * 
     * @return List with the available departments.
     * @throws Exception If any error occurs (not necessary at the moment)
     */
    public List<Department> getDepartments() throws Exception {

        List<Department> deps = new ArrayList<Department>();

        DB db = new DB();
        Connection con = null;
        String query = "SELECT * FROM departments_lesson6_2023_2024;";

        try {

            con = db.getConnection();

            PreparedStatement stmt = con.prepareStatement(query);
            // skipping setting parameters (do not need)
            
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                deps.add( new Department(rs.getInt("id"), rs.getString("name")) );

            }

            rs.close();
            stmt.close();
            db.close();

            return deps;

            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();    
            } catch (Exception e) {
                
            }
            
        }
       

    } // End of getDepartments

    /**
     * Finds and returns the department that has a specific id.
     * 
     * @param depid int the department's id
     * @return Department the department
     * @throws Exception If any error occurs (not necessary at the moment)
     */
    public Department getDepartmentByID(int depid) throws Exception {


        DB db = new DB();
        Connection con = null;
        String query = "SELECT * FROM departments_lesson6_2023_2024 WHERE id=?;";

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            // setting parameter
            stmt.setInt(1, depid);

            ResultSet rs = stmt.executeQuery();

            if (!rs.next()) {
                rs.close();
                stmt.close();
                db.close();
                throw new Exception("No department found with id: " + depid);
            }

            Department department = new Department(rs.getInt("id"), rs.getString("name"));
            rs.close();
            stmt.close();
            db.close();

            return department;
            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                
            }
        }


	} //End of getDepartmentByID

} // End of class