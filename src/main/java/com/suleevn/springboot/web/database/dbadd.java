package com.suleevn.springboot.web.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static com.suleevn.springboot.web.controller.TodoController.*;
import static com.suleevn.springboot.web.database.database.*;


public class dbadd
{


    public static void main(String[] args)
    {

        try
        {


            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, user1, pass);



            String query = " insert into clients (id, fullName, iin,  passport, cr_date, disc, add_inf, address, phoneNumber, prop, user)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


            PreparedStatement preparedStmt = conn.prepareStatement(query, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            preparedStmt.setInt (1, indf );
            preparedStmt.setString (2, fullNameAdd);
            preparedStmt.setString (3,  iinAdd);
            preparedStmt.setString (4, passportAdd);
            preparedStmt.setString   (5, dateAdd);
            preparedStmt.setString   (6, discAdd);
            preparedStmt.setString   (7, addInfoAdd);
            preparedStmt.setString   (8, addressAdd);
            preparedStmt.setString   (9, phoneNumberAdd);
            preparedStmt.setString   (10, propAdd);
            preparedStmt.setString   (11, userAdd);



            preparedStmt.execute();

            conn.close();
        }
        catch (Exception e)
        {
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
        }
    }
}
