package phase2.model;

public class Author extends Person<Author> {
    private String pseudonym;

    public Author() {
    }

    public String getPseudonym() {
        return pseudonym;
    }

    public Author setPseudonym(String pseudonym) {
        this.pseudonym = pseudonym;
        return this;
    }

    @Override
    public String toString() {
        return "Author{" +
                "pseudonym='" + pseudonym + ", " + super.toString() +
                '}';
    }
}
