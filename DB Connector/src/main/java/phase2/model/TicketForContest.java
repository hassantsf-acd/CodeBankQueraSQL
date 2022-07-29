package phase2.model;

public class TicketForContest extends BaseEntity<Integer> {
    private Integer userID;
    private Integer exerciseID;
    private Integer contestID;

    public TicketForContest() {

    }

    public Integer getUserID() {
        return userID;
    }

    public TicketForContest setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public Integer getExerciseID() {
        return exerciseID;
    }

    public TicketForContest setExerciseID(Integer exerciseID) {
        this.exerciseID = exerciseID;
        return this;
    }

    public Integer getContestID() {
        return contestID;
    }

    public TicketForContest setContestID(Integer contestID) {
        this.contestID = contestID;
        return this;
    }

    @Override
    public String toString() {
        return "TicketForContest{" +
                "userID=" + userID +
                ", exerciseID=" + exerciseID +
                ", contestID=" + contestID +
                '}';
    }
}
