public class Mammal {
    protected int energy = 100;
    
    public  int displayEnergy(){
        System.out.println("Energy is " + energy);
        return energy;
    }
    public Mammal(int energy) {
		this.energy = energy;
	}
}
