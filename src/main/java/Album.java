import java.io.Serializable;

public class Album implements Serializable {

    private long id;
    private String author;
    private String name;
    private int releaseDate;
    private double sales;
    private String genre;



    public Album(long id, String author, String name, int releaseDate, double sales, String genre) {
        this.id = id;
        this.author = author;
        this.name = name;
        this.releaseDate = releaseDate;
        this.sales = sales;
        this.genre = genre;
    }

    public Album() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(int releaseDate) {
        this.releaseDate = releaseDate;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }



}
