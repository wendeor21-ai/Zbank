/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package zebank;

import  java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author xw
 */
public class CheakConnection {
    
    
        public static void main(String arg[] ){
        try{
            
           String url="jdbc:mysql://localhost:3306/zebank";
           String dbuser="root";
           String pwd="";
           Connection conn=DriverManager.getConnection(url,dbuser,pwd);
          
           PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customer (cust_id, firstName, lastName, gender, address, branch, phone) VALUES (?, ?, ?, ?, ?, ?, ?)");
                             pstmt.setString(1, "");
                             pstmt.setString(2, "");
                             pstmt.setString(3, "");
                             pstmt.setString(4, "");
                             pstmt.setString(5, "");
                             pstmt.setString(6, "");
                             pstmt.setInt(7, 3);
          
             int rowafected=pstmt.executeUpdate();
             System.out.println("rows affected in the table is:"+rowafected); 
              if(conn!=null){
                System.out.println("Connection Succesfull");
            }
            else{
                System.out.println("Faild to make connection");
            }
        }
        catch(SQLException e){
                System.out.println("exception occured"+e.getMessage());
                }
          }
        
    }