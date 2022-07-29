package phase2.model;

public class CalculateRank extends BaseEntity<Integer>{
    private Integer userID;
    private Integer classID;

    public CalculateRank() {

    }

    public Integer getUserID() {
        return userID;
    }

    public CalculateRank setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public Integer getClassID() {
        return classID;
    }

    public CalculateRank setClassID(Integer classID) {
        this.classID = classID;
        return this;
    }

    @Override
    public String toString() {
        return "CalculateRank{" +
                "userID=" + userID +
                ", classID=" + classID +
                '}';
    }
}
