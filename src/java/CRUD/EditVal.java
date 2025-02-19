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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sejal Jain
 */
public class EditVal {

    public UserRead get_valOfUser(String studentid) {
        DB_connection objDB = new DB_connection();
        Connection connection = objDB.get_connection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        UserRead objUser = new UserRead();

        try {
            String querry = "Select * from basics where student_id=?";
            ps = connection.prepareStatement(querry);
            ps.setString(1, studentid);
            rs = ps.executeQuery();

            while (rs.next()) {

                objUser.setName(rs.getString("name"));
                 objUser.setStudentid(rs.getString("student_id"));
                objUser.setEmail(rs.getString("email"));
                objUser.setDob(rs.getString("DOB"));
                objUser.setPhone(rs.getString("phone"));

            }

        } catch (SQLException e) {
            System.err.println(e);
        }
        return objUser;

    }

    public void editUser(UserRead objUser) {
        DB_connection objDB = new DB_connection();
        Connection connection = objDB.get_connection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            String querry = "Update basics set name=?, email=?, DOB=?, phone=? where student_id=?";
            ps = connection.prepareStatement(querry);
            ps.setString(1, objUser.getName());
            ps.setString(2, objUser.getEmail());
            ps.setString(3, objUser.getDob());
            ps.setString(4, objUser.getPhone());
            ps.setString(5, objUser.getStudentid());
            ps.executeUpdate();

         
        } catch (SQLException e) {
            System.err.println(e);
        }
      

    }
}
