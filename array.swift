//create an empty array containing String types
 
var swift3Array = [String]()
 
swift3Array.append("Tutorials")
 
swift3Array.append("More Tutorials")
 
//remove an item
 
swift3Array.remove(at: 0)  //remove first item
 
//remove everything
 
swift3Array.removeAll()
 
//add stuff back...
 
swift3Array = ["CartoonSmart.com" , "Shameless Plug", "Best Tutorials for Swift 3"]
 
// check if the array has a specific thing...
 
for name in swift3Array {
 
    //for loop iterates through all Strings in the array
 
    if (name == "CartoonSmart.com") {
 
        // found the one we are looking for
 
        print("found")
 
        break
 
    }
 
    
 
}
 
// check if a specific index equals something
 
if ("Best Tutorials for Swift 3" == swift3Array[2] ) {
 
    
    // remember the 2 in swift3Array[2]  means that actually the third item in th array since indexing starts at 0
 
     print("true dat")
 
}



You can create an empty array by specifying the Element type of your array in the declaration. For example:
// Shortened forms are preferred
var emptyDoubles: [Double] = []

// The full type name is also allowed
var emptyFloats: Array<Float> = Array()

If you need an array that is preinitialized with a fixed number of default values, use the Array(repeating:count:) initializer.
var digitCounts = Array(repeating: 0, count: 10)
print(digitCounts)
// Prints "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"

// An array of 'Int' elements
let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]

// An array of 'String' elements
let streets = ["Albemarle", "Brandywine", "Chesapeake"]

for street in streets {
    print("I don't live on \(street).")
}
// Prints "I don't live on Albemarle."
// Prints "I don't live on Brandywine."
// Prints "I don't live on Chesapeake."
