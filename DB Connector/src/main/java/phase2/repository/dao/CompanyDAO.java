package phase2.repository.dao;

import phase2.model.Company;
import phase2.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static phase2.repository.dao.StatementType.*;

public class CompanyDAO implements Repository<Company,Integer> {
    private final EnumMap<StatementType, PreparedStatement> statements;


    public CompanyDAO(Connection connection) {
        statements = new EnumMap<>(StatementType.class);
        prepareStatements(connection);
    }

    private void prepareStatements(Connection connection) {
        try {
            statements.put(FIND_ALL, connection.prepareStatement(
                    "select * from Company"
            ));
            statements.put(FIND_BY_ID, connection.prepareStatement(
                    "select * from Company a where a.id = ?"
            ));
            statements.put(DELETE_BY_ID, connection.prepareStatement(
                    "delete from Company a where a.id = ?"
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
    public Collection<Company> findAll() {
        PreparedStatement statement = statements.get(FIND_ALL);
        ResultSet result;
        List<Company> companyList = new ArrayList<>();
        try {
            result = statement.executeQuery();
            while (result.next()) {
                Company company = new Company()
                        .setName(result.getString("CompanyName"))
                        .setLink(result.getString("Link"))
                        .setEstablishYear(result.getDate("EstablishYear"))
                        .setPhoneNumber(result.getString("PhoneNumber"))
                        .setAddressCity(result.getString("AddressCity"))
                        .setAddressRest(result.getString("AddressRest"))
                        .setAddressCoordinateLatitude(result.getString("AddressCoordinateLatitude"))
                        .setAddressCoordinateMagnitude(result.getString("AddressCoordinateMagnitude"))
                        .setWorkFocus(result.getString("WorkFocus"))
                        .setSize(result.getString("Size"))
                        .setWebSite(result.getString("WebSite"))
                        .setLogo(result.getString("logo"))
                        .setDescription(result.getString("Description"))
                        .setId(result.getInt(1));
                companyList.add(company);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return companyList;
    }

    @Override
    public Optional<Company> findByID(Integer id) {
        PreparedStatement statement = statements.get(FIND_BY_ID);
        try {
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return Optional.of(new Company()
                        .setName(result.getString("CompanyName"))
                        .setLink(result.getString("Link"))
                        .setEstablishYear(result.getDate("EstablishYear"))
                        .setPhoneNumber(result.getString("PhoneNumber"))
                        .setAddressCity(result.getString("AddressCity"))
                        .setAddressRest(result.getString("AddressRest"))
                        .setAddressCoordinateLatitude(result.getString("AddressCoordinateLatitude"))
                        .setAddressCoordinateMagnitude(result.getString("AddressCoordinateMagnitude"))
                        .setWorkFocus(result.getString("WorkFocus"))
                        .setSize(result.getString("Size"))
                        .setWebSite(result.getString("WebSite"))
                        .setLogo(result.getString("logo"))
                        .setDescription(result.getString("Description"))
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
    public Company save(Company entity) {
        return null;
    }
}
