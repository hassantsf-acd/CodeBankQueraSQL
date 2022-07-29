package phase2;

import phase2.model.Author;
import phase2.repository.dao.RepositoryFacade;

public class Application {
    public static void main(String[] args) {
        RepositoryFacade.getInstance()
                .findAll(Author.class)
                .forEach(System.out::println);

        RepositoryFacade.getInstance()
                .findByID(3L, Author.class)
                .ifPresent(System.out::println);
    }
}
