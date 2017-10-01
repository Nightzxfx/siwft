



import Cocoa
//menu layout
print("----------------------/ \\-------------Sept.20.2017------")
print("_-_-_-_-_-_-_-_-_-_-_/---\\_-_--_-_-_-_-_-_-_-_-_-_-_-_-_")
print("--------------------/-----\\-----------------------------")
print("-------------------/-------\\----------PAULO-------------")
print("------------------/--Menu---\\------------VALADARES------")
print("-----------------/-[1]Play---\\----------------BARRILLI--")
print("----------------/--[2]Help----\\------------------MELO---")
print("---------------/---[3]Donate---\\------------------------")
print("--------------/----[4]Credit----\\-------MENU-V0.3-------")
print("-------------/-----[5]Quit-------\\-----made-in-Swift----")
print("|||||||||||||||||||||||||||||||||||||||||||||||||||||||||")

//menu variables
var play: String = "Play"
var help: String = "Help"
var donate: String = "Donate"
var credit: String = "Credit"
var quit: String = "Quit"
var rightanswer: String = "46"

//function to jump Line
func jumpLine() -> Void
{
    print("\n")
    
}
print("v0.2, unable to start without typing a name, while \ninteraction with switch working (rev by Leandro)")
print("v0.3, Arraylist removed, conflict with the switch command \nadded another option, now fully working without crashing \n(rev by Ali)")
jumpLine()

//greeting the user name
print("Hello, \"type your name\"")

var username: String? = readLine()!

//while will run until user type a name
while (username == nil || username == "")
{
    print("Type your name, it cant be blank")
    username = readLine()!
}


print("Hello \(username!), welcome to the beta menu, please type which option would you like to select for example: 1, play, help")

//decision step
var decision: String = "0"


//while that will run the switch command until the user type 5 that means quit
while (decision != "5" || decision != "quit")
{
    var input: String? = readLine()
    //whiel will run the first while until user type a value that means something
    while (input == nil || input == "")
    {
        print("You are back to the main menu, type \"help\" or 2 for more info")
        input = readLine()
    }
    decision = input!
    
    //Array that contains the menu options that will be used by the switch converting the name into number
   // var arrayMenu:[String: Int] = ["play": 1, "help": 2, "donate": 3, "credit": 4, "quit": 5, "1": 1, "2":2, "3":3, "4":4, "5":5]
   // var optionMenu: Int = arrayMenu[decision]!
      var optionMenu: String = decision
    
    //switch options.
    switch optionMenu {
    case "1", "play":
        print("Humm so we have a gamer here, alrigt, lets test your Biology knowledge, \nHow many chromosomes should our cells have? type \"hint\" for help")
        let answer = readLine()!
        //if/ese control flow
        if answer == "hint" {
            print("(5*9) + 71 - (35*2)  = number of chromosomes =D")
        } else if answer == rightanswer {
            print("We have a genious here!!!")
        } else {
            print("I suggest you go to Google")
            
        }
        
    // will bring the customer to the menu option again
    case "2", "help":
        print("To use this menu, please type the option name or the number related to the option, example: 1, Donate, Quit")
        decision = readLine()!
    case "3", "donate":
        print("Youa are so kind, however I only accept 50 and 100 bills")
    case "4", "credit":
        print("This menu was made by Paulo Valadares, this is a simply and not too good version of a swift menu, next one will be better")
    case "5", "quit": 
        print("bye bye")
    default:
        print("Take care")
        
    }
}

print("See you next time")



