package lesson6;

/**
 * This class represents a student (in our example).
 *  
 * @version 1.0
 */
public class Student {

    private String am;
    private String name;
    private String surname;
    private String email;
    private int departmentId;
    private Department department;

    public Student(String am, String name, String surname, String email, int departmentId) {
        this.am = am;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.departmentId = departmentId;
    }

    public Student(String am, String name, String surname, String email, Department department) {
        this.am = am;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.department = department;
        this.departmentId = department.getId();
    }

    /* Getters and Setters */

    public String getAm() {
        return am;
    }

    public void setAm(String am) {
        this.am = am;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }
    
}