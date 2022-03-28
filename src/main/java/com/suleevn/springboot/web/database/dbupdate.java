package com.suleevn.springboot.web.database;

import java.sql.*;
import java.util.Optional;

import com.google.common.primitives.Ints;

import static com.suleevn.springboot.web.controller.TodoController.*;
import static com.suleevn.springboot.web.database.database.*;


public class dbupdate {

    public static void main(String[] args) {

        String setnamesql = "update clients set fullName=?, iin=?,  passport=?, cr_date=?,  disc=?, add_inf=?, address=?, phoneNumber=?, prop=?  where id=?";

        try (Connection conn = DriverManager.getConnection(url, user1, pass);
             PreparedStatement stmt = conn.prepareStatement(setnamesql,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY)) {

            stmt.setString (1, fullNameUpd);
            stmt.setString (2, iinUpd);
            stmt.setString (3, passportUpd);
            stmt.setString   (4, dateUpd);
            stmt.setString   (5, discUpd);
            stmt.setString   (6, addInfoUpd);
            stmt.setString   (7, addressUpd);
            stmt.setString   (8, phoneNumberUpd);
            stmt.setString   (9, propUpd);

            stmt.setInt(10, idUpd);


            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
