package phase2.model;

import java.sql.Date;


public class User extends BaseEntity<Integer> {
    private Date signInDate;
    private String email;
    private String password;
    private Integer rankOfUser;
    private String username;
    private String emailSituation;
    private String address;

    public User() {

    }

    public Date getSignInDate() {
        return signInDate;
    }

    public User setSignInDate(Date signInDate) {
        this.signInDate = signInDate;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public User setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public User setPassword(String password) {
        this.password = password;
        return this;
    }

    public Integer getRankOfUser() {
        return rankOfUser;
    }

    public User setRankOfUser(Integer rankOfUser) {
        this.rankOfUser = rankOfUser;
        return this;
    }

    public String getUsername() {
        return username;
    }

    public User setUsername(String username) {
        this.username = username;
        return this;
    }

    public String getEmailSituation() {
        return emailSituation;
    }

    public User setEmailSituation(String emailSituation) {
        this.emailSituation = emailSituation;
        return this;
    }

    public String getAddress() {
        return address;
    }

    public User setAddress(String address) {
        this.address = address;
        return this;
    }

    @Override
    public String toString() {
        return "User{" +
                "signInDate=" + signInDate +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", rankOfUser=" + rankOfUser +
                ", username='" + username + '\'' +
                ", emailSituation='" + emailSituation + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
