Accessing the Structure and its Properties
The members of the structure are accessed by its structure name. The instances of the structure are initialized by the 'let' keyword.

 Live Demo
struct studentMarks {
   var mark1 = 100
   var mark2 = 200
   var mark3 = 300
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")
