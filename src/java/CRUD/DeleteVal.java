/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CRUD;

import common.DB_connection;
import common.UserRead;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sejal Jain
 */
public class DeleteVal {
    
     public void deleteValue(String studentid) {
        DB_connection objDB = new DB_connection();
        Connection connection = objDB.get_connection();
        PreparedStatement ps = null;
       

        try {
            String querry = "Delete from basics where student_id=?";
            ps = connection.prepareStatement(querry);
            ps.setString(1, studentid);
            ps.executeUpdate();

           

        } catch (SQLException e) {
            System.err.println(e);
        }
       

    }
    
}
