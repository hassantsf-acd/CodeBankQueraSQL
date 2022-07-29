package phase2.model;

public class RankOfUsers extends BaseEntity<Integer>{
    private String descriptionOfRank;
    private Integer score;
    private Integer place;

    public RankOfUsers() {
    }

    public String getDescriptionOfRank() {
        return descriptionOfRank;
    }

    public RankOfUsers setDescriptionOfRank(String descriptionOfRank) {
        this.descriptionOfRank = descriptionOfRank;
        return this;
    }

    public Integer getScore() {
        return score;
    }

    public RankOfUsers setScore(Integer score) {
        this.score = score;
        return this;
    }

    public Integer getPlace() {
        return place;
    }

    public RankOfUsers setPlace(Integer place) {
        this.place = place;
        return this;
    }

    @Override
    public String toString() {
        return "RankOfUsers{" +
                "descriptionOfRank='" + descriptionOfRank + '\'' +
                ", score=" + score +
                ", place=" + place +
                '}';
    }
}
