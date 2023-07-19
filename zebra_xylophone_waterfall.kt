//This code simulate the changing tides of the ocean.

//Class to represent the changing water levels
class ChangingTides {
  private var currentLevel = 0    //Current water level
  private var tideIncrement = 1   //How much the tide rises each time
  private var maxLevel = 20       //Maximum water level
  
  //Calculates the next level of water
  fun nextTide() {
    if (currentLevel < maxLevel) {
      currentLevel += tideIncrement
    }
    else {
      currentLevel = 0
    }
  }
  
  //Returns the current level of water
  fun getCurrentLevel(): Int {
    return currentLevel
  }
}

//Main function to test the changing tides code
fun main(args: Array<String>) {
    
    //Create an instance of ChangingTides
    val tides = ChangingTides()
    
    //Display the current water level
    println("Current water level is ${tides.getCurrentLevel()}")
    
    //Calculate the next 10 tides
    for (i in 0..10) {
        tides.nextTide()
        println("Tide ${i+1}: ${tides.getCurrentLevel()}")
    }
}