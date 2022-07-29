package phase2.model;

import java.sql.Date;

public class Contest extends BaseEntity<Integer> {
    private Integer exerciseID;
    private Integer userID;
    private String name;
    private String document;
    private String singleParticipant;
    private String type;
    private String teamAllowed;
    private String description;
    private String Institute;
    private Integer minParticipant;
    private Integer maxParticipant;
    private Date startDate;
    private Date registerDeadLine;
    private String deadLineType;
    private String isTest;
    private String requiredInfo;
    private String scoreBoard;
    private String registerFee;
    private String registerType;
    private String passwordType;
    private String userPassword;
    private String password;

    public Contest() {

    }

    public String getPassword() {
        return password;
    }

    public Contest setPassword(String password) {
        this.password = password;
        return this;
    }

    public Integer getExerciseID() {
        return exerciseID;
    }

    public Contest setExerciseID(Integer exerciseID) {
        this.exerciseID = exerciseID;
        return this;
    }

    public Integer getUserID() {
        return userID;
    }

    public Contest setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public String getName() {
        return name;
    }

    public Contest setName(String name) {
        this.name = name;
        return this;
    }

    public String getDocument() {
        return document;
    }

    public Contest setDocument(String document) {
        this.document = document;
        return this;
    }

    public String getSingleParticipant() {
        return singleParticipant;
    }

    public Contest setSingleParticipant(String singleParticipant) {
        this.singleParticipant = singleParticipant;
        return this;
    }

    public String getType() {
        return type;
    }

    public Contest setType(String type) {
        this.type = type;
        return this;
    }

    public String getTeamAllowed() {
        return teamAllowed;
    }

    public Contest setTeamAllowed(String teamAllowed) {
        this.teamAllowed = teamAllowed;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Contest setDescription(String description) {
        this.description = description;
        return this;
    }

    public String getInstitute() {
        return Institute;
    }

    public Contest setInstitute(String institute) {
        Institute = institute;
        return this;
    }

    public Integer getMinParticipant() {
        return minParticipant;
    }

    public Contest setMinParticipant(Integer minParticipant) {
        this.minParticipant = minParticipant;
        return this;
    }

    public Integer getMaxParticipant() {
        return maxParticipant;
    }

    public Contest setMaxParticipant(Integer maxParticipant) {
        this.maxParticipant = maxParticipant;
        return this;
    }

    public Date getStartDate() {
        return startDate;
    }

    public Contest setStartDate(Date startDate) {
        this.startDate = startDate;
        return this;
    }

    public Date getRegisterDeadLine() {
        return registerDeadLine;
    }

    public Contest setRegisterDeadLine(Date registerDeadLine) {
        this.registerDeadLine = registerDeadLine;
        return this;
    }

    public String getDeadLineType() {
        return deadLineType;
    }

    public Contest setDeadLineType(String deadLineType) {
        this.deadLineType = deadLineType;
        return this;
    }

    public String getIsTest() {
        return isTest;
    }

    public Contest setIsTest(String isTest) {
        this.isTest = isTest;
        return this;
    }

    public String getRequiredInfo() {
        return requiredInfo;
    }

    public Contest setRequiredInfo(String requiredInfo) {
        this.requiredInfo = requiredInfo;
        return this;
    }

    public String getScoreBoard() {
        return scoreBoard;
    }

    public Contest setScoreBoard(String scoreBoard) {
        this.scoreBoard = scoreBoard;
        return this;
    }

    public String getRegisterFee() {
        return registerFee;
    }

    public Contest setRegisterFee(String registerFee) {
        this.registerFee = registerFee;
        return this;
    }

    public String getRegisterType() {
        return registerType;
    }

    public Contest setRegisterType(String registerType) {
        this.registerType = registerType;
        return this;
    }

    public String getPasswordType() {
        return passwordType;
    }

    public Contest setPasswordType(String passwordType) {
        this.passwordType = passwordType;
        return this;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public Contest setUserPassword(String userPassword) {
        this.userPassword = userPassword;
        return this;
    }

    @Override
    public String toString() {
        return "Contest{" +
                "exerciseID=" + exerciseID +
                ", userID=" + userID +
                ", name='" + name + '\'' +
                ", document='" + document + '\'' +
                ", singleParticipant='" + singleParticipant + '\'' +
                ", type='" + type + '\'' +
                ", teamAllowed='" + teamAllowed + '\'' +
                ", description='" + description + '\'' +
                ", Institute='" + Institute + '\'' +
                ", minParticipant=" + minParticipant +
                ", maxParticipant=" + maxParticipant +
                ", startDate=" + startDate +
                ", registerDeadLine=" + registerDeadLine +
                ", deadLineType='" + deadLineType + '\'' +
                ", isTest='" + isTest + '\'' +
                ", requiredInfo='" + requiredInfo + '\'' +
                ", scoreBoard='" + scoreBoard + '\'' +
                ", registerFee='" + registerFee + '\'' +
                ", registerType='" + registerType + '\'' +
                ", passwordType='" + passwordType + '\'' +
                ", userPassword='" + userPassword + '\'' +
                '}';
    }
}
