package phase2.model;

public class Inistitute extends BaseEntity<Integer>{
    private String name;
    private String type;
    private String webSite;
    private String city;

    public Inistitute() {

    }

    public String getName() {
        return name;
    }

    public Inistitute setName(String name) {
        this.name = name;
        return this;
    }

    public String getType() {
        return type;
    }

    public Inistitute setType(String type) {
        this.type = type;
        return this;
    }

    public String getWebSite() {
        return webSite;
    }

    public Inistitute setWebSite(String webSite) {
        this.webSite = webSite;
        return this;
    }

    public String getCity() {
        return city;
    }

    public Inistitute setCity(String city) {
        this.city = city;
        return this;
    }

    @Override
    public String toString() {
        return "Inistitute{" +
                "name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", webSite='" + webSite + '\'' +
                ", city='" + city + '\'' +
                '}';
    }
}
