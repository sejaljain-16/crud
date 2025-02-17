/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;

import java.sql.DriverManager;
import java.sql.*;

public class DB_connection {

    public static void main(String[] args) {
        DB_connection objDB = new DB_connection();
        System.out.println(objDB.get_connection());
    }

    public Connection get_connection() {

        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql:///studentrecord", "root", "sejal16sql");

        } catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }
}
