var s1 = "Test"
var s2:String = "Test2"
var s3:String? = "Test 3"
var s4:String?
println("\(s1), \(s2), \(s3), and \(s4)")
println(">> \(s3!)")

if s3 == "Test 3" {
    println("Yes")
} else {
    println("Not")
}

func checkOptional(x:String?) {
    if let tempStr = x {
        println("x = \(x), tempStr = \(tempStr)")
    } else {
        println("x = \(x)")
    }
}
checkOptional(s3)
checkOptional(s4)

func printDict(x:Dictionary<String, String>, keys:[String]) {
    for key in keys {
        if let value = x[key] {
            println("Yes!! I have the key(\(key)) and value(\(value))")
        } else {
            println("Nooooo. Too bad. I have no key(\(key))")
        } 
    }
}
var testDict = [
    "test1": "value1",
    "test2": "value2",
    "a": "AAA",
    "b": "BBB"
]
printDict(testDict, ["a", "b", "c"])

if testDict["z"] != nil {
    println("Z. ZZ.. ZZZ... " + testDict["z"]!)
}
