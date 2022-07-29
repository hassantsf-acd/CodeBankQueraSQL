package phase2.model;

public class BookmarkOffer extends BaseEntity<Integer> {
    private Integer offerID;
    private Integer userID;

    public BookmarkOffer() {

    }

    public Integer getOfferID() {
        return offerID;
    }

    public BookmarkOffer setOfferID(Integer offerID) {
        this.offerID = offerID;
        return this;
    }

    public Integer getUserID() {
        return userID;
    }

    public BookmarkOffer setUserID(Integer userID) {
        this.userID = userID;
        return this;
    }

    @Override
    public String toString() {
        return "BookmarkOffer{" +
                "offerID=" + offerID +
                ", userID=" + userID +
                '}';
    }
}
