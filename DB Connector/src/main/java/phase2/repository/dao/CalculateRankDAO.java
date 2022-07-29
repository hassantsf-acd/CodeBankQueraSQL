package phase2.repository.dao;

import phase2.model.ApplyForOffer;
import phase2.model.CalculateRank;
import phase2.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static phase2.repository.dao.StatementType.*;

public class CalculateRankDAO implements Repository<CalculateRank,Integer> {

    private final EnumMap<StatementType, PreparedStatement> statements;


    public CalculateRankDAO(Connection connection) {
        statements = new EnumMap<>(StatementType.class);
        prepareStatements(connection);
    }

    private void prepareStatements(Connection connection) {
        try {
            statements.put(FIND_ALL, connection.prepareStatement(
                    "select * from CalculateRank"
            ));
            statements.put(FIND_BY_ID, connection.prepareStatement(
                    "select * from CalculateRank a where a.id = ?"
            ));
            statements.put(DELETE_BY_ID, connection.prepareStatement(
                    "delete from CalculateRank a where a.id = ?"
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
    public Collection<CalculateRank> findAll() {
        PreparedStatement statement = statements.get(FIND_ALL);
        ResultSet result;
        List<CalculateRank> calculateRanks = new ArrayList<>();
        try {
            result = statement.executeQuery();
            while (result.next()) {
                CalculateRank calculateRank = new CalculateRank()
                        .setClassID(result.getInt("classID"))
                        .setUserID(result.getInt("userID"))
                        .setId(result.getInt(1));
                calculateRanks.add(calculateRank);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return calculateRanks;
    }

    @Override
    public Optional<CalculateRank> findByID(Integer id) {
        PreparedStatement statement = statements.get(FIND_BY_ID);
        try {
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return Optional.of(new CalculateRank()
                        .setClassID(result.getInt("classID"))
                        .setUserID(result.getInt("userID"))
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
    public CalculateRank save(CalculateRank entity) {
        return null;
    }
}
