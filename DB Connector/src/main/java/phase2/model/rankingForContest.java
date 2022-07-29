package phase2.model;

public class rankingForContest extends BaseEntity<Integer> {
    private Integer developerID;
    private Integer scoreBoardID;
    private Integer rankNumber;
    private Integer score;

    public rankingForContest() {

    }

    public Integer getDeveloperID() {
        return developerID;
    }

    public rankingForContest setDeveloperID(Integer developerID) {
        this.developerID = developerID;
        return this;
    }

    public Integer getScoreBoardID() {
        return scoreBoardID;
    }

    public rankingForContest setScoreBoardID(Integer scoreBoardID) {
        this.scoreBoardID = scoreBoardID;
        return this;
    }

    public Integer getRankNumber() {
        return rankNumber;
    }

    public rankingForContest setRankNumber(Integer rankNumber) {
        this.rankNumber = rankNumber;
        return this;
    }

    public Integer getScore() {
        return score;
    }

    public rankingForContest setScore(Integer score) {
        this.score = score;
        return this;
    }

    @Override
    public String toString() {
        return "rankingForContest{" +
                "developerID=" + developerID +
                ", scoreBoardID=" + scoreBoardID +
                ", rankNumber=" + rankNumber +
                ", score=" + score +
                '}';
    }
}
