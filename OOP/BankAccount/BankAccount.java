import java.util.Random;
public class BankAccount {
    // member variables
    private double checkingBalance;
    private double savingBalance;
    private String accountNumber = "";
    private static int numberOfAccounts = 0;
    private static int totalAmount;

    // constructor
    public BankAccount() {
        this.accountNumber = randomAccountNumber();
        this.checkingBalance = 0.0;
        this.savingBalance = 0.0;
        this.numberOfAccounts++;
    }

    // number of bank accounts method / static method
    public static int bankAccountCount() {
        return numberOfAccounts;
    }

    // getter methods
    public double getCheckingBalance() {
        return this.checkingBalance;
    }

    public double getSavingBalance() {
        return this.savingBalance;
    }

    // methods

    // Create a method that will allow a user to deposit money into either the checking or saving, be sure to add to total amount stored.
    public void depositMoney(double amount, String accountType) {
        if (accountType.equals("checking")) {
            checkingBalance += amount;
            totalAmount += amount;
        }
        else if (accountType.equals("savings")) {
            savingBalance += amount;
            totalAmount += amount;
        }
    }

    // Create a method to withdraw money from one balance. Do not allow them to withdraw money if there are insufficient funds.
    public void withdraw(double amount, String accountType) {
        if (accountType.equals("checking")) {
            if (amount <=  checkingBalance) {
                checkingBalance -= amount;
                totalAmount -= amount;
            }
            else {
                System.out.println("Sorry, you have insufficent funds");
            }
        }
        else if (accountType.equals("savings")) {
            if (amount <=  savingBalance) {
                savingBalance -= amount;
                totalAmount -= amount;
            }
            else {
                System.out.println("Sorry, you have insufficent funds");
            }
        }
    }

    // Create a method to see the total money from the checking and saving.
    public void displayBalances() {
        System.out.println("Account number: " + accountNumber);
        System.out.println("Checking balance: $" + checkingBalance);
        System.out.println("Saving balance: $" + savingBalance);
    }

    //  NINJA BONUS: Create a private method that returns a random ten digit account number.
    public String getRandomNumber() {
        Random rand = new Random();
        String numbers = "0123456789";
        char randomNumber = numbers.charAt(rand.nextInt(10));

        return String.valueOf(randomNumber);
    }

    private String randomAccountNumber() {
        for (int i = 0; i < 10; i++) {
            this.accountNumber = this.accountNumber + getRandomNumber();
        }
        return this.accountNumber;
    }
}