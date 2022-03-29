package com.suleevn.springboot.web.database;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class database {
    public static Connection ct = null;
    public static ResultSet rs;
    public static String url = "jdbc:mysql://localhost:3306/clients";
    public static String user1 = "admin", pass = "12345678";
    public static String driver = "com.mysql.jdbc.Driver";


    public static int countdb;
    public static Integer indf;
    public static List<Integer>  iddbl = new ArrayList<Integer>();
    public static List<String>  fullNameDbl = new ArrayList<String>();
    public static ArrayList<String> iinDbl = new ArrayList<String>();
    public static ArrayList<String> passportDbl = new ArrayList<String>();
    public static List<String>  dateDbl = new ArrayList<String>();
    public static List<String> discDbl = new ArrayList<String>();
    public static List<String> addInfoDbl = new ArrayList<String>();
    public static List<String> addressDbl = new ArrayList<String>();
    public static ArrayList<String> phoneNumberDbl = new ArrayList<String>();
    public static List<String> propDbl = new ArrayList<String>();
    public static int size;




    public static void main(String[] args) {



        try {
            Class.forName(driver);
            String queryEverything = "select max(id) from clients order by id";
            ct = DriverManager.getConnection(url, user1, pass);
            Statement stat = ct.createStatement();
            rs = stat.executeQuery(queryEverything);

            if(rs != null){
                if (rs.next()) {
                    indf = rs.getInt(1) + 1;
                }
            }

            if(indf == null){
                indf = 1;
            }

        }
        catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }


    }

}





