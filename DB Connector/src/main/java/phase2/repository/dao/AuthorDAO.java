package phase2.repository.dao;

import phase2.model.Author;
import phase2.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static phase2.repository.dao.StatementType.*;

public class AuthorDAO implements Repository<Author, Long> {
    private final EnumMap<StatementType, PreparedStatement> statements;

    AuthorDAO(Connection connection) {
        statements = new EnumMap<>(StatementType.class);
        prepareStatements(connection);
    }

    private void prepareStatements(Connection connection) {
        try {
            statements.put(FIND_ALL, connection.prepareStatement(
                    "select * from library.author_tbl join person_tbl pt on pt.id = author_tbl.id"
            ));
            statements.put(FIND_BY_ID, connection.prepareStatement(
                    "select * from library.author_tbl a join person_tbl pt on pt.id = a.id where a.id = ?"
            ));
            statements.put(DELETE_BY_ID, connection.prepareStatement(
                    "delete from author_tbl a where a.id = ?"
            ));
            statements.put(INSERT, connection.prepareStatement(
                    "insert into author_tbl(id,pseudonym) values(?,?)"
            ));
            statements.put(UPDATE, connection.prepareStatement(
                    "update author_tbl a set a.pseudonym = ? where a.id = ?"
            ));
            statements.put(FIND_BY_IDS, connection.prepareStatement(
                    "select * from author_tbl a join person_tbl pt on pt.id = a.id where a.id in ?"
            ));
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    @Override
    public List<Author> findAll() {
        PreparedStatement statement = statements.get(FIND_ALL);
        ResultSet result;
        List<Author> authors = new ArrayList<>();
        try {
            result = statement.executeQuery();
            while (result.next()) {
                Author author = new Author()
                        .setPseudonym(result.getString("pseudonym"))
                        .setLastName(result.getString("last_name"))
                        .setFirstName(result.getString("first_name"))
                        .setId(result.getLong(1));
                authors.add(author);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return authors;
    }

    @Override
    public boolean deleteByID(Long id) {
        PreparedStatement statement = statements.get(DELETE_BY_ID);
        try {
            statement.setLong(1, id);
            return statement.executeUpdate() == 1;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return Boolean.FALSE;
        }
    }

    @Override
    public Optional<Author> findByID(Long id) {
        PreparedStatement statement = statements.get(FIND_BY_ID);
        try {
            statement.setLong(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return Optional.of(new Author()
                        .setPseudonym(result.getString("pseudonym"))
                        .setLastName(result.getString("last_name"))
                        .setFirstName(result.getString("first_name"))
                        .setId(result.getLong(1)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return Optional.empty();
    }

    @Override
    public List<Author> findByIDs(Collection<Long> longs) {
        return null;
    }


    @Override
    public Author save(Author entity) {
        return null;
    }
}
