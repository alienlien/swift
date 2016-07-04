func compare(x:Int, y:Int) {
    if (x > y) {
        println("X[\(x)] > Y[\(y)]")
    } else if (x < y) {
        println("X[\(x)] < Y[\(y)]")
    } else {
        println("X[\(x)] = Y[\(y)]")
    }
}

compare(10, 20)
compare(20, 10)
compare(10, 10)
for var i = 0; i < 5; i++ {
    println("\(i)-th iteration")
}

var testList = [11,22,33,44,55,66]
for i in testList {
    println("Element: \(i)")
}

var z = 5
while (z > 0) {
    println("Test while (\(z))")
    z--
}

func testSwitch(x:String) {
    switch x {
        case "a":
            println("1st choice: \(x)")
        case "b":
            println("2nd choice: \(x)")
        case "c", "d":
            println("3rd choice: \(x)")
        default:
            println("Default   : \(x)")
    }
}
var testListString = ["b", "c", "a", "d", "xx", "zoo"]
for x in testListString {
    testSwitch(x)
}

func switch2(x:Int) {
    switch x {
        case 1...2:
            println("1-2: \(x)")
        case 1...4:
            println("1-4: \(x)")
        case 1...8:
            println("1-8: \(x)")
        default:
            println("---: \(x)")
    }
}
testList = [1,2,3,4,5,6,7,8,9]
for x in testList {
    switch2(x)
}

for i in 1..<5 {
    println("\(i)-thhhhhh")
}

func switchTuple(x:(Int, String)) {
    switch x {
        case (200, let msg):
            println("111: \(x); Message = \(msg)")
        case (let code, "z") where (code % 2 == 0):
            println("zzz: \(x); Even: \(code)")
        case (let code, "z") where (code % 2 == 1):
            println("zzz: \(x); Odd : \(code)")
        case (_, "b"):
            println("222: \(x)")
        case (500, "a"):
            println("333: \(x)")
        case (101...566, _):
            println("444: \(x)")
        default:
            println("555: \(x)")
    }
}
var listTuple = [(200, "a"), (200, "b"), (500, "c"), (500, "a"), (100, "c"), (199, "a"), (199, "b"), (900, "z"), (901, "z")]
for x in listTuple {
    switchTuple(x)
}
