package phase2.model;

public class SubmitForContest extends BaseEntity<Integer> {
    private Integer userID;
    private Integer exerciseID;
    private Integer contestID;

    public SubmitForContest() {

    }

    public Integer getUserID() {
        return userID;
    }

    public SubmitForContest setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public Integer getExerciseID() {
        return exerciseID;
    }

    public SubmitForContest setExerciseID(Integer exerciseID) {
        this.exerciseID = exerciseID;
        return this;
    }

    public Integer getContestID() {
        return contestID;
    }

    public SubmitForContest setContestID(Integer contestID) {
        this.contestID = contestID;
        return this;
    }

    @Override
    public String toString() {
        return "SubmitForContest{" +
                "userID=" + userID +
                ", exerciseID=" + exerciseID +
                ", contestID=" + contestID +
                '}';
    }
}
