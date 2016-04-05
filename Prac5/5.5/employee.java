import java.sql.*;
import java.util.*;

class employee{
	public static void main(String[] args){
		Connection con=null;
		Statement stmt=null;
		try{
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/s2c130050131058  ","postgres","12345");
			stmt=con.createStatement();
			String query="create table employee(id Integer,emp_name varchar(30));"; 
			stmt.executeUpdate(query);
			System.out.println("Table Created....!!!");
		}catch(Exception e){}
	}
}

