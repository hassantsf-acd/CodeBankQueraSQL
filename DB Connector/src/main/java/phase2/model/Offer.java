package phase2.model;

import java.sql.Date;

public class Offer extends BaseEntity<Integer>{
    private Integer companyID;
    private String technology;
    private String link;
    private String salary;
    private String type;
    private String title;
    private String isRemote;
    private String skills;
    private String status;
    private String experience;
    private String benefits;
    private Date postedTime;

    public Offer() {

    }

    public Integer getCompanyID() {
        return companyID;
    }

    public Offer setCompanyID(Integer companyID) {
        this.companyID = companyID;
        return this;
    }

    public String getTechnology() {
        return technology;
    }

    public Offer setTechnology(String technology) {
        this.technology = technology;
        return this;
    }

    public String getLink() {
        return link;
    }

    public Offer setLink(String link) {
        this.link = link;
        return this;
    }

    public String getSalary() {
        return salary;
    }

    public Offer setSalary(String salary) {
        this.salary = salary;
        return this;
    }

    public String getType() {
        return type;
    }

    public Offer setType(String type) {
        this.type = type;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public Offer setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getIsRemote() {
        return isRemote;
    }

    public Offer setIsRemote(String isRemote) {
        this.isRemote = isRemote;
        return this;
    }

    public String getSkills() {
        return skills;
    }

    public Offer setSkills(String skills) {
        this.skills = skills;
        return this;
    }

    public String getStatus() {
        return status;
    }

    public Offer setStatus(String status) {
        this.status = status;
        return this;
    }

    public String getExperience() {
        return experience;
    }

    public Offer setExperience(String experience) {
        this.experience = experience;
        return this;
    }

    public String getBenefits() {
        return benefits;
    }

    public Offer setBenefits(String benefits) {
        this.benefits = benefits;
        return this;
    }

    public Date getPostedTime() {
        return postedTime;
    }

    public Offer setPostedTime(Date postedTime) {
        this.postedTime = postedTime;
        return this;
    }

    @Override
    public String toString() {
        return "Offer{" +
                "companyID=" + companyID +
                ", technology='" + technology + '\'' +
                ", link='" + link + '\'' +
                ", salary='" + salary + '\'' +
                ", type='" + type + '\'' +
                ", title='" + title + '\'' +
                ", isRemote='" + isRemote + '\'' +
                ", skills='" + skills + '\'' +
                ", status='" + status + '\'' +
                ", experience='" + experience + '\'' +
                ", benefits='" + benefits + '\'' +
                ", postedTime=" + postedTime +
                '}';
    }
}
