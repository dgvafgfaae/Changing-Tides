#include<iostream>
#include<string>

using namespace std;

class ChangingTides
{
    public: 
    ChangingTides()
    {
        //Constructor
    }
    
    void SayHello()
    {
        cout << "Hello, welcome to Changing Tides" <<endl;
    }
    
    void NextStep()
    {
        cout << "Let's take the next step" << endl;
    }
    
    int AddTwoNumbers(int a, int b)
    {
        return a + b;
    }
    
    void DisplayAllOptions()
    {
        //Loop through all options
    }
    
    string GetUserInput()
    {
        string input;
        cin >> input;
        return input;
    } 
    
    void ExecuteAction(string action)
    {
        //Execute action based on user input
    }
    
    void Start()
    {
        SayHello();
        NextStep();
       
        int a = 7, b = 8;
        int result = AddTwoNumbers(a, b);
        cout << "Result of 7 + 8 = " << result << endl;
        
        DisplayAllOptions();
        
        string userInput = GetUserInput();
        ExecuteAction(userInput);
    }
};

int main()
{
    ChangingTides changingTides;
    changingTides.Start();   
}