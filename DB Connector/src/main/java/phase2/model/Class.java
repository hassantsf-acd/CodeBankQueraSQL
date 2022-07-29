package phase2.model;

public class Class extends BaseEntity<Integer>{
    private Integer userID;
    private Integer instituteID;
    private String detail;
    private String className;
    private String distinctionFeature;
    private String teacherName;
    private String academicYear;
    private Integer capacity;
    private String registration;
    private String password;

    public Class() {

    }

    public Integer getUserID() {
        return userID;
    }

    public Class setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public Integer getInstituteID() {
        return instituteID;
    }

    public Class setInstituteID(Integer instituteID) {
        this.instituteID = instituteID;
        return this;
    }

    public String getDetail() {
        return detail;
    }

    public Class setDetail(String detail) {
        this.detail = detail;
        return this;
    }

    public String getClassName() {
        return className;
    }

    public Class setClassName(String className) {
        this.className = className;
        return this;
    }

    public String getDistinctionFeature() {
        return distinctionFeature;
    }

    public Class setDistinctionFeature(String distinctionFeature) {
        this.distinctionFeature = distinctionFeature;
        return this;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public Class setTeacherName(String teacherName) {
        this.teacherName = teacherName;
        return this;
    }

    public String getAcademicYear() {
        return academicYear;
    }

    public Class setAcademicYear(String academicYear) {
        this.academicYear = academicYear;
        return this;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public Class setCapacity(Integer capacity) {
        this.capacity = capacity;
        return this;
    }

    public String getRegistration() {
        return registration;
    }

    public Class setRegistration(String registration) {
        this.registration = registration;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public Class setPassword(String password) {
        this.password = password;
        return this;
    }

    @Override
    public String toString() {
        return "Class{" +
                "userID=" + userID +
                ", instituteID=" + instituteID +
                ", detail='" + detail + '\'' +
                ", className='" + className + '\'' +
                ", distinctionFeature='" + distinctionFeature + '\'' +
                ", teacherName='" + teacherName + '\'' +
                ", academicYear='" + academicYear + '\'' +
                ", capacity=" + capacity +
                ", registration='" + registration + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
