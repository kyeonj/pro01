package pro01.test;

import java.sql.*;
import java.util.logging.Logger;

import org.junit.Test;

//기능단위테스트: 유닛테스트..
public class OracleTest {
	private final static Logger log = Logger.getGlobal();
	//오라클정보불러오기 ->다른디비변경시 정보변경해주면됨. MYSQL Workbench (mysqldb/mariadb),pgAdmin4(스키마)
	//대문자로 지정해야함.
	private final static String DRIVER = "oracle.jdbc.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final static String USER = "system";
	private final static String PASS = "1234";
	
	@Test //이기호가 달려있는 구문만 실행함.
	public void connectTest() throws ClassNotFoundException{ 
		Class.forName(DRIVER);
		String sql = "select sysdate now from dual";
		try(
				Connection con = DriverManager.getConnection(URL, USER, PASS);	
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		){
			log.info("con : "+con);
			log.info("pstmt : " +pstmt);
			rs.next();
			log.info("현재 : "+rs.getDate("now"));
			rs.close();
			pstmt.close();
			con.close();
			//fail("Not yet implemented");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
