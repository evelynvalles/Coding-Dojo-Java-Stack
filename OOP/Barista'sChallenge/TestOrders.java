import java.util.ArrayList;
public class TestOrders {
    public static void main(String[] args) {
        
        // menu items
        Item item1 = new Item("cappucino", 3.5);
        Item item2 = new Item("Mocha", 4.5);
        Item item3 = new Item("Latte", 5.0);
        Item item4 = new Item("Drip Coffee", 3.25);

        // Create 2 orders for unspecified guests (without specifying a name);
        Order order1 = new Order();
        Order order2 = new Order();

        // Create 3 orders using the overloaded constructor to give each a name for the order.
        Order order3 = new Order("Evelyn");
        Order order4 = new Order("Reyna");
        Order order5 = new Order("Abel");

        // Implement the addItem method within the Order class

        // Add at least 2 items to each of the orders using the addItem method you wrote, for example, 
        // to add item1 to order3 you would need to call the addItem method from the order3 instance like so: order3.addItem(item1);
        order1.addItem(item1);
        order1.addItem(item2);

        order2.addItem(item3);
        order2.addItem(item1);

        order3.addItem(item2);
        order3.addItem(item3);

        order4.addItem(item4);
        order4.addItem(item3);

        order5.addItem(item1);
        order5.addItem(item1);
        order5.addItem(item3);

        // Implement the getStatusMessage method within the Order class
        System.out.println(order1.getStatusMessage());

        // Test your getStatusMessage functionality by setting some orders to ready and printing the messages for each order.
        order1.setReady(true);
        order3.setReady(true);
        System.out.println(order1.getStatusMessage());
        System.out.println(order3.getStatusMessage());

        // Implement the getOrderTotal method within the Order class
        System.out.println(order1.getOrderTotal());
        System.out.println(order2.getOrderTotal());
        System.out.println(order3.getOrderTotal());
        System.out.println(order4.getOrderTotal());
        System.out.println(order5.getOrderTotal());

        // Finally, call the display method on all of your orders, like so: order3.display();
        order1.display();
        order2.display();
        order3.display();
        order4.display();
        order5.display();
    }
}
