package dao;

import java.sql.*;
import java.util.*;
import model.Complaint;
import util.DatabaseConnection;

public class AdminDAO {
	private final Connection connection;

	public AdminDAO() throws SQLException, ClassNotFoundException {
		this.connection = DatabaseConnection.getConnection();
	}

	public int getCount(String tableName) throws Exception {
		String query = "SELECT COUNT(*) FROM " + tableName;
		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);
				ResultSet rs = stmt.executeQuery()) {
			return rs.next() ? rs.getInt(1) : 0;
		}
	}

}
