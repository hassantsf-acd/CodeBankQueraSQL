package phase2.repository.dao;

import phase2.model.Inistitute;
import phase2.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static phase2.repository.dao.StatementType.*;

public class InistituteDAO implements Repository<Inistitute,Integer> {
    private final EnumMap<StatementType, PreparedStatement> statements;


    public InistituteDAO(Connection connection) {
        statements = new EnumMap<>(StatementType.class);
        prepareStatements(connection);
    }

    private void prepareStatements(Connection connection) {
        try {
            statements.put(FIND_ALL, connection.prepareStatement(
                    "select * from ApplyForOffer"
            ));
            statements.put(FIND_BY_ID, connection.prepareStatement(
                    "select * from ApplyForOffer a where a.id = ?"
            ));
            statements.put(DELETE_BY_ID, connection.prepareStatement(
                    "delete from ApplyForOffer a where a.id = ?"
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
    public Collection<Inistitute> findAll() {
        PreparedStatement statement = statements.get(FIND_ALL);
        ResultSet result;
        List<Inistitute> inistitutes = new ArrayList<>();
        try {
            result = statement.executeQuery();
            while (result.next()) {
                Inistitute inistitute = new Inistitute()
                        .setName(result.getString("InistituteName"))
                        .setType(result.getString("InistituteType"))
                        .setWebSite(result.getString("InistituteWebSite"))
                        .setCity(result.getString("InistituteCity"))
                        .setId(result.getInt(1));
                inistitutes.add(inistitute);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return inistitutes;
    }

    @Override
    public Optional<Inistitute> findByID(Integer id) {
        PreparedStatement statement = statements.get(FIND_BY_ID);
        try {
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return Optional.of(new Inistitute()
                        .setName(result.getString("InistituteName"))
                        .setType(result.getString("InistituteType"))
                        .setWebSite(result.getString("InistituteWebSite"))
                        .setCity(result.getString("InistituteCity"))
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
        }    }

    @Override
    public Inistitute save(Inistitute entity) {
        return null;
    }
}
