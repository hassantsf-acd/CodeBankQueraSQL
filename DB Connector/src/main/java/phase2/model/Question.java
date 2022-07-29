package phase2.model;

import java.sql.Date;

public class Question extends BaseEntity<Integer> {
    private Integer exerciseID;
    private Integer userIDForJudgment;
    private Integer userIDForCreate;
    private String description;
    private String solutionStatus;
    private String label;
    private Date postedTime;
    private String group;
    private String limitations;

    public Question() {

    }

    public Integer getExerciseID() {
        return exerciseID;
    }

    public Question setExerciseID(Integer exerciseID) {
        this.exerciseID = exerciseID;
        return this;
    }

    public Integer getUserIDForJudgment() {
        return userIDForJudgment;
    }

    public Question setUserIDForJudgment(Integer userIDForJudgment) {
        this.userIDForJudgment = userIDForJudgment;
        return this;
    }

    public Integer getUserIDForCreate() {
        return userIDForCreate;
    }

    public Question setUserIDForCreate(Integer userIDForCreate) {
        this.userIDForCreate = userIDForCreate;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Question setDescription(String description) {
        this.description = description;
        return this;
    }

    public String getSolutionStatus() {
        return solutionStatus;
    }

    public Question setSolutionStatus(String solutionStatus) {
        this.solutionStatus = solutionStatus;
        return this;
    }

    public String getLabel() {
        return label;
    }

    public Question setLabel(String label) {
        this.label = label;
        return this;
    }

    public Date getPostedTime() {
        return postedTime;
    }

    public Question setPostedTime(Date postedTime) {
        this.postedTime = postedTime;
        return this;
    }

    public String getGroup() {
        return group;
    }

    public Question setGroup(String group) {
        this.group = group;
        return this;
    }

    public String getLimitations() {
        return limitations;
    }

    public Question setLimitations(String limitations) {
        this.limitations = limitations;
        return this;
    }

    @Override
    public String toString() {
        return "Question{" +
                "exerciseID=" + exerciseID +
                ", userIDForJudgment=" + userIDForJudgment +
                ", userIDForCreate=" + userIDForCreate +
                ", description='" + description + '\'' +
                ", solutionStatus='" + solutionStatus + '\'' +
                ", label='" + label + '\'' +
                ", postedTime=" + postedTime +
                ", group='" + group + '\'' +
                ", limitations='" + limitations + '\'' +
                '}';
    }
}
