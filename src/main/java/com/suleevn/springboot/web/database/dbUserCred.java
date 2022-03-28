package com.suleevn.springboot.web.database;

import com.suleevn.springboot.web.model.Todo;
import com.suleevn.springboot.web.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.suleevn.springboot.web.database.database.*;
import static com.suleevn.springboot.web.service.TodoService.todos;

public class dbUserCred {
    public static Connection qr = null;
    public static ResultSet resultSet = null;
    public static List<User> user_cred = new ArrayList<>();

    public static void main(String[] args) {



        try {
            Class.forName(driver);
            String queryEverything = "select * from user";
            qr = DriverManager.getConnection(url, user1, pass);
            Statement stat = qr.createStatement();
            resultSet = stat.executeQuery(queryEverything);
            while (resultSet.next()) {
                User each_user = new User();
                each_user.setLogin(resultSet.getString("login"));
                each_user.setPassword(resultSet.getString("password"));
                each_user.setRole(resultSet.getString("role"));
                each_user.setEnabled(resultSet.getString("enabled"));
                user_cred.add(each_user);
            }
            resultSet.close();
        }
        catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }


    }
}
