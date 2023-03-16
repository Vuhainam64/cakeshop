/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.User;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/**
 *
 * @author _viet.quangg
 */
public class UserFacade {
    public User login(String email, String password) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("select * from Customers where email = ? and password = ?");
        stm.setString(1, email);
        stm.setString(2, password);
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery();
        //load du lieu vao doi tuong toy neu co
        if (rs.next()) {
            user = new User();
            user.setId(rs.getString("id"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
        }
        //dong ket net
        con.close();
        return user;
    }
    
    public User checkExist(String email) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("select * from Customers where email = ?");
        stm.setString(1, email);
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery();
        //load du lieu vao doi tuong toy neu co
        if (rs.next()) {
            user = new User();
            user.setId(rs.getString("id"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
        }
        //dong ket net
        con.close();
        return user;
    }
    
    public void create(User user) throws SQLException, ClassNotFoundException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        
        con.close();
    }
}
