package Bean;

/**
 *
 * @author JAMES
 */
public class Student {
    private final String fname, lname, id;

    public Student(String fname, String lname, String id) {
        this.fname = fname;
        this.lname = lname;
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getId() {
        return id;
    }
    
}
