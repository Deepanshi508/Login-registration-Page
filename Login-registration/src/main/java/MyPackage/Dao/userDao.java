package MyPackage.Dao;
import UserPackage.User;

public interface userDao {
	
	boolean addUser(User user);
	boolean isValid(String username, String password);
}
