package phase2.model;

public class ManageContest extends BaseEntity<Integer> {
    private Integer userID;
    private Integer contestID;

    public ManageContest() {

    }

    public Integer getUserID() {
        return userID;
    }

    public ManageContest setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public Integer getContestID() {
        return contestID;
    }

    public ManageContest setContestID(Integer contestID) {
        this.contestID = contestID;
        return this;
    }

    @Override
    public String toString() {
        return "ManageContest{" +
                "userID=" + userID +
                ", contestID=" + contestID +
                '}';
    }
}
