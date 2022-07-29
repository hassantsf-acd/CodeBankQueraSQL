package phase2.model;

public class UserSubmitClass extends BaseEntity<Integer>{
    private Integer userID;
    private Integer classID;

    public UserSubmitClass() {

    }

    public Integer getUserID() {
        return userID;
    }

    public UserSubmitClass setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public Integer getClassID() {
        return classID;
    }

    public UserSubmitClass setClassID(Integer classID) {
        this.classID = classID;
        return this;
    }

    @Override
    public String toString() {
        return "UserSubmitClass{" +
                "userID=" + userID +
                ", classID=" + classID +
                '}';
    }
}
