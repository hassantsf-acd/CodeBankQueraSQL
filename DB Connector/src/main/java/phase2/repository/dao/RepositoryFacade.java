package phase2.repository.dao;

import phase2.model.ApplyForOffer;
import phase2.model.Author;
import phase2.model.BaseEntity;
import phase2.repository.Repository;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;

public final class RepositoryFacade {
    private static RepositoryFacade INSTANCE = null;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/library";
    private static final String USER_NAME = "root";
    private static final String PASSWORD = "123456";

    private Map<Class<?>, Repository<?, ? extends Serializable>> daos = new HashMap<>();

    private RepositoryFacade(Connection connection) {
        daos.put(Author.class, new AuthorDAO(connection));
        daos.put(BookDAO.class, new BookDAO(connection));
//        daos.put(ApplyForOffer.class,new ApplyForOfferDAO(connection));
    }

    public synchronized static RepositoryFacade getInstance() {
        if (INSTANCE == null) {
            try {
                INSTANCE = new RepositoryFacade(DriverManager
                        .getConnection(DB_URL, USER_NAME, PASSWORD));
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return INSTANCE;
    }

    public <ID extends Serializable, T extends BaseEntity<ID>> List<T> findAll(Class<T> type) {
        Repository<?, ?> repository = daos.get(type);
        if (repository != null) {
            return new ArrayList<>(((Repository<T, ID>) daos.get(type)).findAll());
        }
        return Collections.emptyList();
    }

    public <ID extends Serializable, T extends BaseEntity<ID>> Optional<T>
    findByID(ID id, Class<T> type) {

        return Optional.ofNullable(daos.get(type))
                .map(repo -> (Repository<T, ID>) repo)
                .flatMap(repo -> repo.findByID(id));
    }

    public <ID extends Serializable, T extends BaseEntity<ID>>
    boolean deleteByID(ID id, Class<T> type) {
        return Optional.ofNullable(daos.get(type))
                .map(repo -> (Repository<T, ID>) repo)
                .map(repo -> repo.deleteByID(id))
                .orElse(Boolean.FALSE);
    }


    public <ID extends Serializable, T extends BaseEntity<ID>> List<T>
    findByIDs(Collection<ID> ids, Class<T> type) {
        return Optional.ofNullable(daos.get(type))
                .map(repo -> (Repository<T, ID>) repo)
                .map(repo -> new ArrayList<T>(repo.findByIDs(ids)))
                .orElse(new ArrayList<>());
    }

    public <ID extends Serializable, T extends BaseEntity<ID>> T save(T entity) {
        return null;
    }
}
