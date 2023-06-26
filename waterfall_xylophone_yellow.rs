fn main() {
    //Defining variables that will be used throughout the code
    let mut tide_height: i32 = 0;
    let mut tide_change_rate: i32 = 1;
    let mut current_tide_height: i32 = 0;
    let mut time_step: i32 = 0;
    
    //Loop for 2000 steps
    while time_step < 2000 {
        //Calculate tide height
        tide_height = current_tide_height + (tide_change_rate * time_step);
        
        //Alternate tide change rate
        if time_step % 20 == 0 {
            tide_change_rate = -1 * tide_change_rate;
        }
        
        //Print current tide height
        println!("Tide height at {} steps: {}", time_step, tide_height);
        
        //Update current tide height
        current_tide_height = tide_height;
        
        //Increment step number
        time_step += 1;
    }
}