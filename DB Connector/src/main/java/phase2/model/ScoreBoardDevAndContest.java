package phase2.model;

public class ScoreBoardDevAndContest extends BaseEntity<Integer> {
    private String description;

    public ScoreBoardDevAndContest() {

    }

    public String getDescription() {
        return description;
    }

    public ScoreBoardDevAndContest setDescription(String description) {
        this.description = description;
        return this;
    }

    @Override
    public String toString() {
        return "ScoreBoardDevAndContest{" +
                "description='" + description + '\'' +
                '}';
    }
}
