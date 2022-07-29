package phase2.repository.dao;

import phase2.model.Contest;
import phase2.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static phase2.repository.dao.StatementType.*;

public class ContestDAO implements Repository<Contest,Integer> {
    private final EnumMap<StatementType, PreparedStatement> statements;


    public ContestDAO(Connection connection) {
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
    public Collection<Contest> findAll() {
        PreparedStatement statement = statements.get(FIND_ALL);
        ResultSet result;
        List<Contest> contests = new ArrayList<>();
        try {
            result = statement.executeQuery();
            while (result.next()) {
                Contest contest = new Contest()
                        .setExerciseID(result.getInt("ExerciseID"))
                        .setUserID(result.getInt("userID"))
                        .setMinParticipant(result.getInt("minParticipants"))
                        .setMaxParticipant(result.getInt("maxParticipants"))
                        .setName(result.getString("ContestName"))
                        .setDocument(result.getString("Document"))
                        .setSingleParticipant(result.getString("singleParticipant"))
                        .setType(result.getString("Type"))
                        .setTeamAllowed(result.getString("TeamAllowed"))
                        .setDescription(result.getString("Description"))
                        .setInstitute(result.getString("Inistitute"))
                        .setStartDate(result.getDate("startDate"))
                        .setRegisterDeadLine(result.getDate("RegisterDeadline"))
                        .setDeadLineType(result.getString("DeadlineType"))
                        .setIsTest(result.getString("isTest"))
                        .setRequiredInfo(result.getString("requiredInfo"))
                        .setScoreBoard(result.getString("ScoreBoard"))
                        .setRegisterFee(result.getString("RegisterFee"))
                        .setRegisterType(result.getString("RegisterType"))
                        .setUserPassword(result.getString("userPassword"))
                        .setPassword(result.getString("Pasword"))
                        .setId(result.getInt(1));
                contests.add(contest);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return contests;
    }

    @Override
    public Optional<Contest> findByID(Integer id) {
        PreparedStatement statement = statements.get(FIND_BY_ID);
        try {
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return Optional.of( new Contest()
                        .setExerciseID(result.getInt("ExerciseID"))
                        .setUserID(result.getInt("userID"))
                        .setMinParticipant(result.getInt("minParticipants"))
                        .setMaxParticipant(result.getInt("maxParticipants"))
                        .setName(result.getString("ContestName"))
                        .setDocument(result.getString("Document"))
                        .setSingleParticipant(result.getString("singleParticipant"))
                        .setType(result.getString("Type"))
                        .setTeamAllowed(result.getString("TeamAllowed"))
                        .setDescription(result.getString("Description"))
                        .setInstitute(result.getString("Inistitute"))
                        .setStartDate(result.getDate("startDate"))
                        .setRegisterDeadLine(result.getDate("RegisterDeadline"))
                        .setDeadLineType(result.getString("DeadlineType"))
                        .setIsTest(result.getString("isTest"))
                        .setRequiredInfo(result.getString("requiredInfo"))
                        .setScoreBoard(result.getString("ScoreBoard"))
                        .setRegisterFee(result.getString("RegisterFee"))
                        .setRegisterType(result.getString("RegisterType"))
                        .setUserPassword(result.getString("userPassword"))
                        .setPassword(result.getString("Pasword"))
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
    public Contest save(Contest entity) {
        return null;
    }
}
