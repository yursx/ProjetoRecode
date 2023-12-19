
	package connection;

	import java.sql.Connection;
	import java.sql.DriverManager;

	public class ConnectionMySQL  {
	private static String URL = ("com.mysql.jdbc.Driver");
	private static String USUARIO= "root";
	private static String SENHA = "60321419";

	public static Connection creatConnectionMySql() throws Exception {
		Class.forName("com.mysql,cj,jdbc,Driver");

	    Connection connection = DriverManager.getConnection (URL, USUARIO, SENHA);
	    
	    return connection;
	}

	public static void main (String[] args) throws Exception{
		Connection con = creatConnectionMySql();
		
		if (con != null) {
			System.out.println(con + "\n\n **** Conexão obtida com sucesso! ****");
			 con.close();
		}
	}

	}
