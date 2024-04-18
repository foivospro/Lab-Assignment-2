package lesson6;

/**
 * This class represents a University Department (in our example).
 * 
 * @author Sofoklis Stouraitis <a href="mailto:sofos@aueb.gr">sofos@aueb.gr</a>
 * @version 1.0
 */
public class Department {
    
    private int id;
    private String name;

    /**
     * Constructor to create a Department.
     * 
     * @param id int the department id.
     * @param name String the department name.
     */
    public Department(int id, String name) {
        this.id = id;
        this.name = name;
    }

    /* Getters and Setters */
    
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}