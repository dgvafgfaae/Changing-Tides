public class ChangingTides {
	
	//Fields & Instance Variables
	private int tideLevel;
	private long timePeriod;
	private double tideChangeRate;
	
	//Constructors
	public ChangingTides(int tideLevel, long timePeriod, double tideChangeRate) {
		this.tideLevel = tideLevel;
		this.timePeriod = timePeriod;
		this.tideChangeRate = tideChangeRate;
	}
	
	public ChangingTides() {
		this(0, 0, 0);
	}
	
	//Getters & Setters
	public int getTideLevel() {
		return tideLevel;
	}
	
	public void setTideLevel(int tideLevel) {
		this.tideLevel = tideLevel;
	}
	
	public long getTimePeriod() {
		return timePeriod;
	}
	
	public void setTimePeriod(long timePeriod) {
		this.timePeriod = timePeriod;
	}
	
	public double getTideChangeRate() {
		return tideChangeRate;
	}
	
	public void setTideChangeRate(double tideChangeRate) {
		this.tideChangeRate = tideChangeRate;
	}
	
	//Methods
	public void calculateTideLevel() {
		tideLevel = (int)(tideLevel + (timePeriod * tideChangeRate));
	}
	
	public void printTideLevel() {
		System.out.println("The current tide level is: " + tideLevel);
	}
	
	//Main Method
	public static void main(String[] args) {
		ChangingTides tides = new ChangingTides(10, 10, 0.2);
		
		tides.calculateTideLevel();
		tides.printTideLevel();
	}
}