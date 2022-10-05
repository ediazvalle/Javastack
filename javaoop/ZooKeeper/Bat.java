public class Bat extends Mammal{
    public Bat(int energy){
        super(energy);
    }

    public void fly(){
        System.out.println("WHOOSH");
        energy -= 50;
    }
    
    public void eatHuman(){
        energy += 25;
    }
    
    public void attackTown(){
        System.out.println("AGHHHHHHHH OH MY GOD MY FLESH IS BURNING HOLY SHIIIT");
        energy -= 100;
    }
    
}
