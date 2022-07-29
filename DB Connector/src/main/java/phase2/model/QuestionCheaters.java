package phase2.model;

public class QuestionCheaters extends BaseEntity<Integer> {
    private Integer questionID;
    private Integer userID;

    public QuestionCheaters() {

    }

    public Integer getQuestionID() {
        return questionID;
    }

    public QuestionCheaters setQuestionID(Integer questionID) {
        this.questionID = questionID;
        return this;
    }

    public Integer getUserID() {
        return userID;
    }

    public QuestionCheaters setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    @Override
    public String toString() {
        return "QuestionCheaters{" +
                "questionID=" + questionID +
                ", userID=" + userID +
                '}';
    }
}
