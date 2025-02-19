/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CRUD;
import java.sql.*;

import common.DB_connection;

/**
 *
 * @author Sejal Jain
 */
public class InsertVal {
    
    public void insertVal(String name, String studentid, String email, String dob,String phone){
        DB_connection objDB = new DB_connection();
        Connection connection = objDB.get_connection();
        PreparedStatement ps = null;
        
        try{
        String query = "insert into basics(name, student_id,email, DOB, phone) values (?,?,?,?,?)";
        ps=connection.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2, studentid);
        ps.setString(3, email);
        ps.setString(4, dob);
        ps.setString(5, phone);
        
        ps.executeUpdate();
        
        
        }catch(Exception e){
            System.err.println(e);
        }
    }
}
