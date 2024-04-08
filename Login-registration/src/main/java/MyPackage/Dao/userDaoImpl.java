package MyPackage.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import MyPackage.util.DButil;
import UserPackage.User;

public class userDaoImpl implements userDao{
	
	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		String query="INSERT INTO users(username,email,password) VALUES(?,?,?)";
		try(Connection connection=DButil.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(query)){
			
			prepareStatement.setString(1,user.getUsername());
			prepareStatement.setString(2, user.getPassword());
			prepareStatement.setString(3,user.getEmail());
			
			int rowsAffected=prepareStatement.executeUpdate();
			
			return rowsAffected>0;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
			
			
			
	}

	@Override
	public boolean isValid(String username, String password) {
		// TODO Auto-generated method stub
		String query="SELECT * FROM users WHERE username=? AND password=?";
		try{
			Connection connection = DButil.getConnection();
			PreparedStatement prepareStatement= connection.prepareStatement(query);
			
			prepareStatement.setString(1,username);
			prepareStatement.setString(2, password);
			
			ResultSet resultset=prepareStatement.executeQuery();
			
			return resultset.next();
		}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
