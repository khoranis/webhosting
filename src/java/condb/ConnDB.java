package condb;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author khora
 */
public class ConnDB {

    public static Connection connect() {
        String userName, password, url, driver;
        Connection connect = null;

        userName = "root";
        password = "";
        url = "jdbc:mysql://localhost:3306/webhosting";
        driver = "com.mysql.jdbc.Driver";
        try {
            Class.forName(driver);

            connect = (Connection)  DriverManager.getConnection(url, userName, password);
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connect;
    }

}
