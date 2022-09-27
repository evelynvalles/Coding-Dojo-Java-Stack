public class TestOrders {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CoffeeKiosk coffeeKiosk = new CoffeeKiosk();
		
        // menu items
        coffeeKiosk.addMenuItem("Cappucino", 3.5);
        coffeeKiosk.addMenuItem("Mocha", 4.5);
        coffeeKiosk.addMenuItem("Latte",5.0);
        coffeeKiosk.addMenuItem("Drip Coffee", 3.25);
        // orders
        coffeeKiosk.newOrder();
        
	}

}
