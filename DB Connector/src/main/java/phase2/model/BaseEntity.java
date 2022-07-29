package phase2.model;

import java.io.Serializable;

public abstract class BaseEntity<ID extends Serializable> {
    private ID id;

    protected BaseEntity() {
    }

    public ID getId() {
        return id;
    }

    public <T extends BaseEntity<ID>> T setId(ID id) {
        this.id = id;
        return (T) this;
    }

    @Override
    public String toString() {
        return "BaseEntity{" +
                "id=" + id +
                '}';
    }
}
