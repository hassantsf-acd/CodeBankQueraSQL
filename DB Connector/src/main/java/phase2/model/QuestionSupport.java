package phase2.model;

public class QuestionSupport extends BaseEntity<Integer> {
    private Integer questionID;
    private Integer userID;

    public QuestionSupport() {

    }

    public Integer getQuestionID() {
        return questionID;
    }

    public QuestionSupport setQuestionID(Integer questionID) {
        this.questionID = questionID;
        return this;
    }

    public Integer getUserID() {
        return userID;
    }

    public QuestionSupport setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    @Override
    public String toString() {
        return "QuestionSupport{" +
                "questionID=" + questionID +
                ", userID=" + userID +
                '}';
    }
}
