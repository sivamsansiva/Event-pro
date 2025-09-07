package dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public interface GenericDAO<E> {
	boolean create(E entity) throws SQLException;

	Optional<E> getById(String id) throws SQLException;

	List<E> getAll() throws SQLException;

	boolean update(E entity) throws SQLException;

	boolean delete(String id) throws SQLException;
}
