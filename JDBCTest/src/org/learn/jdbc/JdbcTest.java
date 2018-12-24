package org.learn.jdbc;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcTest {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:oracletest";
    private static final String USERNAME = "zs";
    private static final String PASSWORD = "zs";

    public static String update() {// 增删改
        Connection connection = null;
        Statement statement = null;
        int i = 0;
        try {


            Class.forName("oracle.jdbc.OracleDriver");// 加载具体的驱动

            connection = (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);// 与数据库建立连接

            statement = connection.createStatement(); // 发送sql 执行sql

            String sql = "insert into student values('3','ww','20151090',22,'153609')";// 要执行的sql

            i = statement.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(connection!=null)connection.close();
                if(statement!=null) statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (i >= 1) {
            return "操作成功,影响的行数为:" + 1;
        } else {
            return "操作失败";
        }

    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        String update = JdbcTest.update();
        System.out.println(update);
    }
}