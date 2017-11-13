//
//  main.swift
//  Db
//
//  Created by h01 on 2017-11-13.
//  Copyright © 2017 h01. All rights reserved.
//

import Foundation




protocol TabularDataSource{
    
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    
    func label(forcolumn column:Int) -> String
    
    func itemFor(row: Int, column: Int) -> String
}



func printTable(_ dataSource: TabularDataSource)
{
    
    var firstRow = "|"
    
    // Keep track of the width of each column
    var columnWidths = [Int]()
    
    // Table Header Information
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forcolumn: i)
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.characters.count)
    }
    
    print(firstRow)
    
    for i in 0 ..< dataSource.numberOfRows{
        
        var out = "|"
        
        for j in 0 ..< dataSource.numberOfColumns
        {
            let item = dataSource.itemFor(row: i, column: j)
            let paddingNeeded = columnWidths[j] - item.characters.count
            let padding = repeatElement(".", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        print(out)
    }
}



struct Person {
    let name: String
    let id: Int
    let salary: Int
    let dpt: String
}


struct Department: TabularDataSource{
    let name: String
    var people = [Person]()
    
    init(name: String)
    {
        self.name = name
    }
    
    mutating func add (_ person: Person)
    {
        people.append(person)
    }
    
    var numberOfRows: Int{
        return people.count
    }
    
    var numberOfColumns: Int{
        return 4
    }
    
    func label(forcolumn column: Int) -> String {
        switch column {
        case 0:
            return "ID"
        case 1:
            return "Employee_Name"
        case 2:
            return "Salary"
        case 3:
            return "Department"
        default:
            fatalError("Invalid Column")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0: return String(person.id)
        case 1: return person.name
        case 2: return String(person.salary)
        case 3: return String(person.dpt)
        default: fatalError("Invalid column")
        }
    }
}



var department = Department(name: "Programming")

department.add(Person(name: "Paulo", id: 01, salary: 99999, dpt: "Owner"))
department.add(Person(name: "Mayra", id: 02, salary: 18291, dpt: "Accounting"))
department.add(Person(name: "Leandro", id: 03, salary: 73628, dpt: "Programmer"))
var select: String
var input: String

print("Say \"Help\" if you dont know the options")


print("MySQL Command > ", terminator: "")
input = readLine()!

while(input == nil || input == "") {
    print("MySQL Command > ", terminator: "")
    input = readLine()!
}


if (input == "Help") {
    print("Say Select * From to see the whole table")
} else if (input == "Select * From") {
    printTable(department)
} else if (input == "Select") {
    print ("Which user would you like to select?")
    
} else if (input != "Select" && input != "Help") {
    print("Again, say Help if you dont know how to use it!!")
    
}

select = readLine()!

switch select {
case "Paulo":
    print("  ")
}

