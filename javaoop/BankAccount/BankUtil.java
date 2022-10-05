public class BankUtil {

    private double checking = 0;
    private double saving = 0;

    public static int numAccounts = 0;
	public static double totalHoldings = 0;

    public double getBalance() {
        return this.checking;
    }

    public double getSaving() {
        return this.saving;
    }

    public void deposit(double amount, String account) {
        if (account.equals("saving")){
            saving = saving + amount;
        }
        else if (account.equals("checking")) {
            checking += amount;
        }
    }

    public void withdraw(double amount, String account) {
        if (account.equals("saving")){
            if(this.saving - amount > 0){
                saving = saving - amount;
            }
            else {
                System.out.println("NOT ENOUGH MONEY BROKE BOY!!!");
            }
        }
        else if (account.equals("checking")) {
                if(this.checking - amount > 0){
                    checking = checking - amount;
                }
                else {
                    System.out.println("NOT ENOUGH MONEY BROKE BOY!!!");
                }
            }
        }
        
    public void displayBalance(){
        System.out.println(String.format("Savings: %.2f, Checking: %.2f", checking, saving));
    }
}
