/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CRUD;

import common.DB_connection;
import common.UserRead;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Sejal Jain
 */
public class ReadVal {
    
    public static void main(String[] args){
        ReadVal objRead = new ReadVal();
        objRead.get_val();
    }

    public List<UserRead> get_val() {
        DB_connection objDB = new DB_connection();
        Connection connection = objDB.get_connection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        List<UserRead> list = new ArrayList<UserRead>();

        try {
            String querry = "Select * from basics";
            ps = connection.prepareStatement(querry);
            rs = ps.executeQuery();
            
            

            while (rs.next()) {
                UserRead objUser = new UserRead();
                System.out.println(rs.getString("name"));
                System.out.println(rs.getString("student_id")); // parameters passed are the column table names 
                System.out.println(rs.getString("email"));
                System.out.println(rs.getString("DOB"));
                System.out.println(rs.getString("phone"));
                
                objUser.setName(rs.getString("name"));
                objUser.setStudentid(rs.getString("student_id"));
                objUser.setEmail(rs.getString("email"));
                objUser.setDob(rs.getString("DOB"));
                objUser.setPhone(rs.getString("phone"));
                
                list.add(objUser);
                

            }

        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;

    }
}
