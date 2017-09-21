


import Cocoa
//menu layout
print("------------------/ \\--------------------")
print("_-_-_-_-_-_-_-_-_/---\\_-_-_--_-_-_-_-_-_-")
print("----------------/-----\\------------------")
print("---------------/-------\\-----------------")
print("--------------/--Menu---\\----------------")
print("-------------/-[1]Play---\\---------------")
print("------------/--[2]Help----\\--------------")
print("-----------/---[3]Donate---\\-------------")
print("----------/----[4]Credit----\\------------")
print("---------/-----[5]Quit-------\\-----------")
print("||||||||||||||||||||||||||||||||||||||||||")

//menu variables
var play: String = "Play"
var help: String = "Help"
var donate: String = "Donate"
var credit: String = "Credit"
var quit: String = "Quit"
var rightanswer: String = "46"

//greeting the user name
print("Hello, \"type your name\"")
let username = readLine()!


print("Hello \(username), welcome to out beta menu, please type which option would you like to select from 1 to 5")

//decision
let decision = readLine()!



// Creating an Array from the Menu list
 var arrayMenu:[String: Int] = ["play": 1, "help": 2, "donate": 3, "credit": 4, "quit": 5, "1": 1, "2":2, "3":3, "4":4, "5":5]
var optionMenu: Int = arrayMenu[decision]!

//options
switch optionMenu {
case 1:
    print("Humm so we have a gamer here, alrigt, lets test your Biology knowledge, \n How many chromosomes our cells have? type \"hint\" for help")
    let answer = readLine()!
    if answer == "hint" {
        print("(6 + 7 - 16 (13 * 2) ) * 2  = number of chromosomes =D")
    } else if answer == "46" {
        print("We have a genious here!!!")
    } else {
        print("I suggest you go to Google")
        
    }
    
    // will bring the customer to the menu option again
case 2:
    print("To use this menu, please type the option name or the number related to the option, example: 1, Donate, Quit")
    let decision = readLine()!
case 3:
    print("Youa are so kind, however I only accept 50 and 100 bills")
case 4:
    print("This menu was made by Paulo Valadares, this is a simply and not too good version of a swift menu, next one will be better")
case 5:
    abort()
default:
    print("Take care")
    
}

/* func callMenu(decision: String) -> String {
    return  ;  switch optionMenu {
                case 1:
                        print("Humm so we have a gamer here, alrigt, lets test your Biology knowledge, \n How many      chromosomes our cells have? type \"hint\" for help")
                        let answer = readLine()!
                        if answer == "hint" {
                            print("(6 + 7 - 16 (13 * 2) ) * 2  = number of chromosomes =D")
                        } else if answer == "46" {
                            print("We have a genious here!!!")
                        } else {
                            print("I suggest you go to Google")
                            
                }
        
    // will bring the customer to the menu option again
    case 2:
        print("To use this menu, please type the option name or the number related to the option, example: 1, Donate, Quit")
        let decision = readLine()!
        
        
    default:
        print("Take care")
        
    }
    
    
} */



