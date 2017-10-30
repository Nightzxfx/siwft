/create the Swift 3 Dictionary with nothing, and set the types 
 
// (String will be Key, and any object will be the value
 
var someDict = [String : AnyObject]()  //could use Any or AnyObject here
 
// add a key and value
 
someDict["Ex wives"] = 5 as AnyObject
 
print (someDict)
 
// add another key and value
 
someDict["Current wives"] = 1 as AnyObject
 
print (someDict)
 
//remove Current wives. Oh well.
 
someDict.removeValue(forKey: "Current wives")
 
print (someDict)
 
//changes ex wives to 6
 
someDict["Ex wives"] = 6 as AnyObject
 
print (someDict)
 
// remove all
 
someDict.removeAll()
