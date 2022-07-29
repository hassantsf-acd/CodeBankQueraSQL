package phase2.model;

public class ApplyForOffer extends BaseEntity<Integer> {
        private Integer offerID;
        private Integer userID;

    public ApplyForOffer() {

    }

    public Integer getUserID() {
        return userID;
    }

    public ApplyForOffer setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    public Integer getOfferID() {
        return offerID;
    }

    public ApplyForOffer setOfferID(Integer offerID) {
        this.offerID = offerID;
        return this;
    }

    @Override
    public String toString() {
        return "ApplyForOffer{" +
                "offerID=" + offerID +
                ", userID=" + userID +
                '}';
    }
}
