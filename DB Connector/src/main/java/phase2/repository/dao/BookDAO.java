package phase2.repository.dao;

import phase2.model.Book;
import phase2.repository.Repository;

import java.sql.Connection;
import java.util.Collection;
import java.util.Optional;

public class BookDAO implements Repository<Book, Long> {
    BookDAO(Connection connection) {
        // TODO: 12/18/2021
    }

    @Override
    public Collection<Book> findAll() {
        return null;
    }

    @Override
    public Optional<Book> findByID(Long aLong) {
        return Optional.empty();
    }

    @Override
    public boolean deleteByID(Long aLong) {
        return false;
    }

    @Override
    public Book save(Book entity) {
        return null;
    }
}
