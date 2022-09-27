public class Item {
    private String name;
    private double price;

    //  constuctor
    public Item(String name, double price) {
        this.name = name;
        this.price = price;
    }

    // name
    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // price
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}