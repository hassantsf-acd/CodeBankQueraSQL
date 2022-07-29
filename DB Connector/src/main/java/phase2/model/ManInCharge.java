package phase2.model;

public class ManInCharge extends BaseEntity<Integer> {
    private Integer contestID;
    private String name;
    private String email;
    private String nationalCode;
    private String phoneNumber;

    public ManInCharge() {

    }

    public Integer getContestID() {
        return contestID;
    }

    public ManInCharge setContestID(Integer contestID) {
        this.contestID = contestID;
        return this;
    }

    public String getName() {
        return name;
    }

    public ManInCharge setName(String name) {
        this.name = name;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public ManInCharge setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getNationalCode() {
        return nationalCode;
    }

    public ManInCharge setNationalCode(String nationalCode) {
        this.nationalCode = nationalCode;
        return this;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public ManInCharge setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
        return this;
    }

    @Override
    public String toString() {
        return "ManInCharge{" +
                "contestID=" + contestID +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", nationalCode='" + nationalCode + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
    }
}
