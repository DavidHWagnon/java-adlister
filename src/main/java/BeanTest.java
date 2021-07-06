import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album twentyFourMagic = new Album(1, "Bruno Mars", "24k Magic", 2016, 3, "Pop, Funk, R&B");
        Author hDT = new Author(1, "Henry David", "Thoreau");
        Quote quoteOfTheDay = new Quote(1, "Go GO GO", hDT);

        System.out.println(quoteOfTheDay.getContent());
        System.out.println(quoteOfTheDay.getAuthor());
        System.out.println(twentyFourMagic.getGenre());

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quoteOfTheDay);
        quotes.add(new Quote(2, "Better in", new Author(2, "Shrek", "The Ogre")));
        quotes.add(new Quote(3, "Better out", hDT));


        for (Quote quote: quotes){
            System.out.println("Here is a quote for you  ");
            System.out.printf("%s%n      - %s %s,", quote.getContent(), quote.getAuthor().getFirstName(), quote.getAuthor().getLastName());
        }

    }
}
