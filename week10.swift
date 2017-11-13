//: Playground - noun: a place where people can play

import Cocoa

func printTable(_ data: [[String]], withcolumnLabels: String...)
{
    
    var firstRow = "|"
    
    var columnWidths = [Int]()
    
    for columnLabel in withcolumnLabels{
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.characters.count)
    }
    
    print(firstRow)
    
    
       //loop through the array (employer information)
    for row in data {
        //start the output string
     var out = "|"
        //append each item in this row to the string
        
        for (j, item) in row.enumerated()
        {
        //Find Difference btw Header and current Data lenght(chatacter.count)
            let paddinNeeded = columnWidths[j] - item.characters.count
            let padding = repeatElement(" ", count: paddinNeeded).joined(separator: "")
            out += "\(padding) \(item) |"
        }

        
     /*   for item in row {
            out += " \(item) | "
        }
       */
        //Done - print
        print(out)
    }
}
/*
let data = [
    ["Paulo", "28", "10"],
    ["dqwdqw", "2dw", "3120"]
]

printTable(data, withcolumnLabels: "Employer name", "age", "Years od Experencie")
 */

struct Person {
    
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department {
    let name: String
    var people = [Person] ()
    
    init(name: String)
    {
        self.name = name
    }
    
    mutating func add (_ person: Person)
    {
        people.append(person)
    }
}
var department = Department(name: "Programming")
department.add(Person(name: "Paulo", age: 28, yearsOfExperience: 10))
department.add(Person(name: "Valadares", age: 30, yearsOfExperience: 20))
department.add(Person(name: "Barrilli", age: 55, yearsOfExperience: 30))



