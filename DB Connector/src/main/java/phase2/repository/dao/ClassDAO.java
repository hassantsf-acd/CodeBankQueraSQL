package phase2.repository.dao;

import phase2.model.Class;
import phase2.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static phase2.repository.dao.StatementType.*;

public class ClassDAO implements Repository<Class,Integer> {
    private final EnumMap<StatementType, PreparedStatement> statements;


    public ClassDAO(Connection connection) {
        statements = new EnumMap<>(StatementType.class);
        prepareStatements(connection);
    }

    private void prepareStatements(Connection connection) {
        try {
            statements.put(FIND_ALL, connection.prepareStatement(
                    "select * from Class"
            ));
            statements.put(FIND_BY_ID, connection.prepareStatement(
                    "select * from Class a where a.id = ?"
            ));
            statements.put(DELETE_BY_ID, connection.prepareStatement(
                    "delete from Class a where a.id = ?"
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
    public Collection<Class> findAll() {
        PreparedStatement statement = statements.get(FIND_ALL);
        ResultSet result;
        List<Class> classes = new ArrayList<>();
        try {
            result = statement.executeQuery();
            while (result.next()) {
                Class aClass = new Class()
                        .setInstituteID(result.getInt("InistituteID"))
                        .setUserID(result.getInt("userID"))
                        .setDetail(result.getString("ClassDetail"))
                        .setClassName(result.getString("ClassName"))
                        .setDistinctionFeature(result.getString("ClassDistinctionFeature"))
                        .setTeacherName(result.getString("TeacherName"))
                        .setAcademicYear(result.getString("AcademicYear"))
                        .setCapacity(result.getInt("Capacity"))
                        .setRegistration(result.getString("RegistrationSituation"))
                        .setId(result.getInt(1));
                classes.add(aClass);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return classes;
    }

    @Override
    public Optional<Class> findByID(Integer id) {
        PreparedStatement statement = statements.get(FIND_BY_ID);
        try {
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return Optional.of(new Class()
                        .setInstituteID(result.getInt("InistituteID"))
                        .setUserID(result.getInt("userID"))
                        .setDetail(result.getString("ClassDetail"))
                        .setClassName(result.getString("ClassName"))
                        .setDistinctionFeature(result.getString("ClassDistinctionFeature"))
                        .setTeacherName(result.getString("TeacherName"))
                        .setAcademicYear(result.getString("AcademicYear"))
                        .setCapacity(result.getInt("Capacity"))
                        .setRegistration(result.getString("RegistrationSituation"))
                        .setId(result.getInt(1)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return Optional.empty();
    }

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
    public Class save(Class entity) {
        return null;
    }
}
