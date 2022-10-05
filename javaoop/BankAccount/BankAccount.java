class BankAccount {
    public static void main(String[] args) {
        BankUtil bank = new BankUtil();
        bank.deposit(100.49, "checking");
		bank.deposit(3.00, "saving");
		bank.displayBalance();
        bank.deposit(69, "checking");
		bank.deposit(3, "saving");
		bank.displayBalance();
    }
}