/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package condb;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author khora
 */
public class dbconnect {
    
        public static Statement connect() throws SQLException {
        Statement s = null;
        Connection connect = null;
        connect = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/webhosting"
                        + "?user=root&password=");
        s = connect.createStatement();
        return  s; 
    }
}
