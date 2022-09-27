public class TestBankAccount {
    public static void main(String[] args) {

        // creating bank account instances
        BankAccount bankAccount1 = new BankAccount();
        BankAccount bankAccount2 = new BankAccount();
        // Testing if static method bankAccountCount works
        System.out.println(BankAccount.bankAccountCount());
        // testing if depositMoneyWorks
        bankAccount1.depositMoney(100.0,"checking");
        bankAccount2.depositMoney(250.0,"checking");
        bankAccount2.depositMoney(500.0,"savings");

        // Testing if withdrawl method works
        bankAccount1.withdraw(50.0, "checking");
        bankAccount1.withdraw(50.0, "savings");

        // Testing if displayBalances works
        bankAccount1.displayBalances();
        bankAccount2.displayBalances();
    }
}