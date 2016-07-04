var x:String
x = "Test"
var y:String = "Not Test"
println("X has initial value? \(x)")
println("Y is \(y)")

// swap swaps the string input.
func swap(x:String, y:String) -> (String, String) {
    return (y, x)
}
println("(X, Y) = (\(x), \(y))")
(x, y) = swap(x, y)
println("After swapping, (X, Y) = (\(x), \(y))")

// swap swaps two integers.
func swap(x:Int, y:Int) -> (Int, Int) {
    return (y, x)
}
var a:Int = 10
var b:Int = 20
println("(A, B) = (\(a), \(b))")
(a, b) = swap(a, b)
println("After swapping, (A, B) = (\(a), \(b))")

