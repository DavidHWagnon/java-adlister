
import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{
    private Connection connection;

    public MySQLAdsDao(Config config){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword());
        } catch (SQLException error){
            throw new RuntimeException("Error connecting to the database");
        }

    }


    
    
    @Override
    public List<Ad> all() {
        List<Ad> adList = new ArrayList<>();
        try{
            Statement stmt = connection.createStatement();
            String showAds = "SELECT * FROM ads";
            ResultSet rs = stmt.executeQuery(showAds);
            while (rs.next()){
                adList.add(new Ad(
                        rs.getInt("id"),
                        rs.getInt("userid"),
                        rs.getString("title"),
                        rs.getString("description")
                ));
            }
        } catch (SQLException se){
            se.printStackTrace();
        }
        return adList;
    }

    @Override
    public Long insert(Ad ad) {
        String sql = String.format("insert into ads (user_id, title, description) values(%d, '%s', '%s')", ad.getUserId() ,ad.getTitle(), ad.getDescription());
        long lastId = 0;
        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return lastId;
    }
}
