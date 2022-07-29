package phase2.repository.dao;

import phase2.model.Exercise;
import phase2.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static phase2.repository.dao.StatementType.*;

public class ExerciseDAO implements Repository<Exercise,Integer> {
    private final EnumMap<StatementType, PreparedStatement> statements;


    public ExerciseDAO(Connection connection) {
        statements = new EnumMap<>(StatementType.class);
        prepareStatements(connection);
    }

    private void prepareStatements(Connection connection) {
        try {
            statements.put(FIND_ALL, connection.prepareStatement(
                    "select * from Exercises"
            ));
            statements.put(FIND_BY_ID, connection.prepareStatement(
                    "select * from Exercises a where a.id = ?"
            ));
            statements.put(DELETE_BY_ID, connection.prepareStatement(
                    "delete from Exercises a where a.id = ?"
            ));
/*
            statements.put(INSERT, connection.prepareStatement(
                    "insert into author_tbl(id,pseudonym) values(?,?)"
            ));
            statements.put(UPDATE, connection.prepareStatement(
                    "update author_tbl a set a.pseudonym = ? where a.id = ?"
            ));
*/
/*            statements.put(FIND_BY_IDS, connection.prepareStatement(
                    "select * from ApplyForOffer a where a.id in ?"
            ));*/
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    @Override
    public Collection<Exercise> findAll() {
        PreparedStatement statement = statements.get(FIND_ALL);
        ResultSet result;
        List<Exercise> exercises = new ArrayList<>();
        try {
            result = statement.executeQuery();
            while (result.next()) {
                Exercise exercise = new Exercise()
                        .setClassID(result.getInt("classID"))
                        .setDescription(result.getString("Description"))
                        .setDeadLine(result.getDate("deadline"))
                        .setId(result.getInt(1));
                exercises.add(exercise);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return exercises;
    }

    @Override
    public Optional<Exercise> findByID(Integer id) {
        PreparedStatement statement = statements.get(FIND_BY_ID);
        try {
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return Optional.of(new Exercise()
                        .setClassID(result.getInt("classID"))
                        .setDescription(result.getString("Description"))
                        .setDeadLine(result.getDate("deadline"))
                        .setId(result.getInt(1)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return Optional.empty();    }

    @Override
    public boolean deleteByID(Integer id) {
        PreparedStatement statement = statements.get(DELETE_BY_ID);
        try {
            statement.setInt(1, id);
            return statement.executeUpdate() == 1;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return Boolean.FALSE;
        }
    }

    @Override
    public Exercise save(Exercise entity) {
        return null;
    }
}
