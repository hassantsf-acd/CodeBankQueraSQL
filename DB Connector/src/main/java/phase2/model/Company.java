package phase2.model;

import java.sql.Date;

public class Company extends User{
    private String name;
    private String link;
    private Date establishYear;
    private String phoneNumber;
    private String addressCity;
    private String addressRest;
    private String addressCoordinateLatitude;
    private String addressCoordinateMagnitude;
    private String workFocus;
    private String size;
    private String webSite;
    private String logo;
    private String description;

    public Company() {

    }

    public String getName() {
        return name;
    }

    public Company setName(String name) {
        this.name = name;
        return this;
    }

    public String getLink() {
        return link;
    }

    public Company setLink(String link) {
        this.link = link;
        return this;
    }

    public Date getEstablishYear() {
        return establishYear;
    }

    public Company setEstablishYear(Date establishYear) {
        this.establishYear = establishYear;
        return this;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public Company setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
        return this;
    }

    public String getAddressCity() {
        return addressCity;
    }

    public Company setAddressCity(String addressCity) {
        this.addressCity = addressCity;
        return this;
    }

    public String getAddressRest() {
        return addressRest;
    }

    public Company setAddressRest(String addressRest) {
        this.addressRest = addressRest;
        return this;
    }

    public String getAddressCoordinateLatitude() {
        return addressCoordinateLatitude;
    }

    public Company setAddressCoordinateLatitude(String addressCoordinateLatitude) {
        this.addressCoordinateLatitude = addressCoordinateLatitude;
        return this;
    }

    public String getAddressCoordinateMagnitude() {
        return addressCoordinateMagnitude;
    }

    public Company setAddressCoordinateMagnitude(String addressCoordinateMagnitude) {
        this.addressCoordinateMagnitude = addressCoordinateMagnitude;
        return this;
    }

    public String getWorkFocus() {
        return workFocus;
    }

    public Company setWorkFocus(String workFocus) {
        this.workFocus = workFocus;
        return this;
    }

    public String getSize() {
        return size;
    }

    public Company setSize(String size) {
        this.size = size;
        return this;
    }

    public String getWebSite() {
        return webSite;
    }

    public Company setWebSite(String webSite) {
        this.webSite = webSite;
        return this;
    }

    public String getLogo() {
        return logo;
    }

    public Company setLogo(String logo) {
        this.logo = logo;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Company setDescription(String description) {
        this.description = description;
        return this;
    }

    @Override
    public String toString() {
        return "Company{" +
                "name='" + name + '\'' +
                ", link='" + link + '\'' +
                ", establishYear=" + establishYear +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", addressCity='" + addressCity + '\'' +
                ", addressRest='" + addressRest + '\'' +
                ", addressCoordinateLatitude='" + addressCoordinateLatitude + '\'' +
                ", addressCoordinateMagnitude='" + addressCoordinateMagnitude + '\'' +
                ", workFocus='" + workFocus + '\'' +
                ", size='" + size + '\'' +
                ", webSite='" + webSite + '\'' +
                ", logo='" + logo + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
