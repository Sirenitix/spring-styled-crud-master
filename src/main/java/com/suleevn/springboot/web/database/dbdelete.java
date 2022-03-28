package com.suleevn.springboot.web.database;


import java.sql.*;

import static com.suleevn.springboot.web.database.database.*;
import static com.suleevn.springboot.web.service.TodoService.iddel;


public class dbdelete {

    public static void main(String[] args) {

        String sql = "delete from clients where id=?";

        try (Connection conn = DriverManager.getConnection(url, user1, pass);
             PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY)) {

            stmt.setInt(1, iddel);
            stmt.executeUpdate();

            System.out.println("Record deleted successfully");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}