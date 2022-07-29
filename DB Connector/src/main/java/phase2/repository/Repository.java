package phase2.repository;

import java.io.Serializable;
import java.util.Collection;
import java.util.Optional;

public interface Repository<E, ID extends Serializable> {

    Collection<E> findAll(); //read

    Optional<E> findByID(ID id); //read


    boolean deleteByID(ID id); // delete

    E save(E entity); // create & update

    default Collection<E> findByIDs(Collection<ID> ids) { // read
        throw new UnsupportedOperationException("findByIds not implemented!");
    }

    default E insert(E entity) throws Exception { // only inserts
        throw new UnsupportedOperationException("insert not implemented!");
    }

    default E update(E entity) throws Exception { // only updates
        throw new UnsupportedOperationException("update not implemented!");
    }
}
