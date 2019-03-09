package Bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JAMES
 */
public class Operations {

    private String fname, lname, id;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Operations.class.getName()).log(Level.SEVERE, null, ex);
        }
        String url = "jdbc:derby://localhost:1527/sample";
        //Class.forName(driver);    
        Connection con = DriverManager.getConnection(url, "app", "app");

        return con;
    }

    public int save() throws SQLException {
        int code = 0;
        Connection con = getConnection();
        String sql = "INSERT INTO STUDENTS(fname,lname,id) VALUES('" + fname + "','" + lname + "','" + id + "')";
        Statement st = con.createStatement();
        if (!st.executeQuery("SELECT * FROM STUDENTS WHERE id='" + id + "'").next()) {
            code = st.executeUpdate(sql);
        } else {
            code = 2;
        }
        return code;
    }
    public int delete() throws SQLException{
        int code = 0;
        Connection con = getConnection();
        String sql = "DELETE FROM STUDENTS WHERE id='" + id + "'";
        Statement st = con.createStatement();
        if (st.executeQuery("SELECT * FROM STUDENTS WHERE id='" + id + "'").next()) {
            code = st.executeUpdate(sql);
        } else {
            code = 2;
        }
        return code;
    }
    public int update() throws SQLException{
        int code = 0;
        Connection con = getConnection();
        String sql = "UPDATE STUDENTS SET fname='"+fname+"',lname='"+lname+"' WHERE id='" + id + "'";
        Statement st = con.createStatement();
        if (st.executeQuery("SELECT * FROM STUDENTS WHERE id='" + id + "'").next()) {
            code = st.executeUpdate(sql);
        } else {
            code = 2;
        }
        return code;
    }

    public static ArrayList<Student> fetchAll() throws SQLException {
        Connection con = getConnection();
        String sql = "SELECT * FROM STUDENTS";
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        ArrayList<Student> students = new ArrayList<>();
        while (rs.next()) {
            Student student = new Student(rs.getString("fname"), rs.getString("lname"), rs.getString("id"));
            students.add(student);
        }
        return students;
    }
}
