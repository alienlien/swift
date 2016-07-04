func add(x:Int, y:Int) -> Void {
    println("x + y = \(x+y)")
}
add(3, 4)

func add2(num1 x:Int, num2 y:Int) -> Int{
    return (x + y)
}
println("1 + 2 = \(add2(num1: 1, num2: 2))")

func add3(# x:Int, # y:Int) -> Int {
    return (x + y)
}
println("1 + 2 = \(add3(x: 1, y: 2))")

func getNames(first:String, names:String...) -> String {
    return first + ", " + " and ".join(names)
}
println(getNames("Hello", "Apple", "Book", "Cidar"))
println(getNames("Good Morning", "Jake", "Jack"))

func addEven(x:Int, y:Int) -> Int? {
    let isEven = (x % 2 == 0, y % 2 == 0)
    switch isEven {
    case (true, true):
       return x + y
    default:
       return nil
    }
}
println("2 + 3 ? -> \(addEven(2, 3))")
println("2 + 4 ? -> \(addEven(2, 4))")

func morning(s:String) -> String {
    return "Good Morning, " + s
}

func night(s:String) -> String {
    return "Good Night, " + s
}

func sayHello(name1:String, name2:String, f:(String)->String) {
    println("\(name1): \(f(name2))")
}
sayHello("Apple", "Belly", morning)
sayHello("ZooKeeper", "Yawn", night)

println(["a", "b", "c"].map(night))

func helloFactory(from:String) -> (String) -> String {
    func hello(to:String) -> String {
        return from + ": Hello, " + to
    }
    return hello
}
var hello1 = helloFactory("Paul")
var hello2 = helloFactory("Mike")
println(hello1("Dice"))
println(hello2("Zack"))

let numList = [1, 3, 5, 7]
let doubleNum = numList.map({
    (x: Int) -> Int in return (x * 2)
})
println("Double: \(doubleNum)")

let tripleNum = numList.map({num in num * 3})
println("Triple: \(tripleNum)")

let quadNum = numList.map({ $0 * 4})
println("Quad  : \(quadNum)")

func multiplierFactory(m:Int) -> (Int) -> Int {
    return {
        (num: Int) -> Int in return (m * num)
    }
}
let double2 = multiplierFactory(2)
let triple2 = multiplierFactory(3)
println(">> Double 2: \(numList.map(double2))")
println(">> Triple 2: \(numList.map(triple2))")
