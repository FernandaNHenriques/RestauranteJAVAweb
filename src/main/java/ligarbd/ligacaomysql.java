package ligarbd;
import java.sql.*;

public class ligacaomysql {
	public static String estado="Não ligado";
	
	public static Connection criarligacaomysql() {
		Connection cn=null;
		try {
			String driver="com.mysql.cj.jdbc.Driver";
			Class.forName(driver);
			
			String caminho="jdbc:mysql://127.0.0.1:3306/bdpagapouco?userTimezone=true&serverTimezone=UTC";
			String utilizador="root";
			String password="12345";
			cn=DriverManager.getConnection(caminho, utilizador, password);
			if(cn!=null) {
				estado="Ligação efetuada com sucesso!";
			}
			else {
				estado="Não foi possível efetuar a ligação!";
			}
			return(cn);
		}
		catch(ClassNotFoundException e) {
			System.out.println("Driver não encontrado!");
			return(null);
		}
		catch(SQLException e) {
			System.out.println("Não foi possível ligar à base de dados!");
			return(null);
		}
	}
	public static String estadoligacao() {
		return(estado);
	}

}
