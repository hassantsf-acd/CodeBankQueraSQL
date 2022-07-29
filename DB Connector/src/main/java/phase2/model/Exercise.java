package phase2.model;

import java.sql.Date;

public class Exercise extends BaseEntity<Integer>{
    private Integer classID;
    private String description;
    private Date deadLine;

    public Exercise() {

    }

    public Integer getClassID() {
        return classID;
    }

    public Exercise setClassID(Integer classID) {
        this.classID = classID;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Exercise setDescription(String description) {
        this.description = description;
        return this;
    }

    public Date getDeadLine() {
        return deadLine;
    }

    public Exercise setDeadLine(Date deadLine) {
        this.deadLine = deadLine;
        return this;
    }

    @Override
    public String toString() {
        return "Exercise{" +
                "classID=" + classID +
                ", description='" + description + '\'' +
                ", deadLine=" + deadLine +
                '}';
    }
}
