import java.util.ArrayList;
public class CafeUtil {

    int getStreakGoal(){
        int sum = 0;
        for( int week =1; week <= 10; week++){
            sum += week;
        }
        return sum;
    }

    double getOrderTotal(double[] prices){
        int sum = 0;
        for(double total:prices){
            sum +=total;
        }
        return sum;
    }

    void displayMenu(ArrayList<String> menuItems){
        for(int i = 0; i < menuItems.size(); i++){
            System.out.printf("%s %s \n", i, menuItems.get(i));
        }
    }

    public void addCustomer(ArrayList<String> customers){
        System.out.println("Please enter your name: ");
        String userName = System.console().readLine();
        System.out.println("Hello, " + userName);
        System.out.println("There are " + customers.size() + " people in front of you");
        customers.add(userName);
        System.out.println(customers);
    }

}
