package phase2.model;

public abstract class Person<T extends Person<T>> extends BaseEntity<Long> {
    private String firstName;
    private String lastName;

    protected Person() {
    }

    public String getFirstName() {
        return firstName;
    }

    public T setFirstName(String firstName) {
        this.firstName = firstName;
        return (T) this;
    }

    public String getLastName() {
        return lastName;
    }

    public T setLastName(String lastName) {
        this.lastName = lastName;
        return (T) this;
    }

    @Override
    public String toString() {
        return "Person{" +
                "firstName='" + firstName + ", " +
                ", lastName='" + lastName + ", " + super.toString() +
                '}';
    }
}
