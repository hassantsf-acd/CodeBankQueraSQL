package phase2.model;

public class Solutions extends BaseEntity<Integer> {
    private Integer exerciseID;
    private Integer rankOfUserID;
    private String description;

    public Solutions() {

    }

    public Integer getExerciseID() {
        return exerciseID;
    }

    public Solutions setExerciseID(Integer exerciseID) {
        this.exerciseID = exerciseID;
        return this;
    }

    public Integer getRankOfUserID() {
        return rankOfUserID;
    }

    public Solutions setRankOfUserID(Integer rankOfUserID) {
        this.rankOfUserID = rankOfUserID;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Solutions setDescription(String description) {
        this.description = description;
        return this;
    }

    @Override
    public String toString() {
        return "Solutions{" +
                "exerciseID=" + exerciseID +
                ", rankOfUserID=" + rankOfUserID +
                ", description='" + description + '\'' +
                '}';
    }
}
