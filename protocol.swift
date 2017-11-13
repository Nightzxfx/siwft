//: Playground - noun: a place where people can play

import UIKit



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
    let age: Int
    let yearsOfExperiance: Int
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
        return 3
    }
    
    func label(forcolumn column: Int) -> String {
        switch column {
            case 0:
                return "Employee Name"
            case 1:
                return "Age"
            case 2:
                return " Years Of Experiance"
            default:
                fatalError("Invalid Column")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperiance)
        default: fatalError("Invalid column")
        }
    }
}



var department = Department(name: "Programming")

department.add(Person(name: "Ali", age: 30, yearsOfExperiance: 10))
department.add(Person(name: "Steve", age: 32, yearsOfExperiance: 12))
department.add(Person(name: "Joe", age: 28, yearsOfExperiance: 5))

printTable(department)

