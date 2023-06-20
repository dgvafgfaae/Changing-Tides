#include <iostream>
#include <string>

//Function for printing a greeting message
void greeting() {
	std::cout << "Welcome to the Changing Tides program!" << std::endl << std::endl;
}

//Function for printing the instructions
void instructions() {
	std::cout << "Here are the instructions:" << std::endl;
	std::cout << "1. Enter the height of the tide at the beginning of the day" << std::endl;
	std::cout << "2. Enter the amount of time in hours that has passed since the start of the day" << std::endl;
	std::cout << "3. The program will output the current tide height" << std::endl;
	std::cout << "4. The program will continue running until you enter the word 'quit'" << std::endl;
	std::cout << std::endl;
}

//Function for calculating and printing the tide height
void calculateTide(float start, float elapsed) {
	float current_tide = start + (elapsed / 12);
	std::cout << "The current tide height is " << current_tide << " feet." << std::endl;
	std::cout << std::endl;
}

int main() {
	//Greeting message
	greeting();
	
	//Printing instructions
	instructions();
	
	//Input for the beginning tide height
	std::cout << "Please enter the beginning tide height (in feet): ";
	float start;
	std::cin >> start;
	float elapsed = 0;
	
	//Loop for the user input
	while (elapsed != -1) {
		//Input for the elapsed time
		std::cout << "Please enter the elapsed time (in hours) or enter 'quit' to exit the program: ";
		std::string input;
		std::cin >> input;
		if (input == "quit") {
			elapsed = -1;
		}
		else {
			elapsed = std::stof(input);
			//Calculate and print the tide height
			calculateTide(start, elapsed);
		}
	}
	
	//Program complete message
	std::cout << "Program complete." << std::endl;
	
	return 0;
}