public class Gorrilla extends Mammal  {

    public Gorrilla(int energy){
        super(energy);
    }

    public void throwSomething(){
        System.out.println("Monkey threw dookey at you!");
        energy -= 5;
    }
    public void eatBananas(){
        System.out.println("Monkey eat banana!");
        energy += 10;
    }
    public void climb(){
        System.out.println("Monkey climb!");
        energy -= 10;
    }

}
