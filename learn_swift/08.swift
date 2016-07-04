var tuple1 = (1, 3.14, "Test")

var (a, b, c) = tuple1
var (x, _, _) = tuple1
println("Values: \(a), \(b), \(c), \(x)")

var tuple2 = (key1: 100, key2: "A single element")
println("Tuple2 = \(tuple2)")
println("\(tuple2.key1), and \(tuple2.key2)")
println("\(tuple2.0), and \(tuple2.1)")
tuple2 = (200, "x")
println("\(tuple2.key1), and \(tuple2.key2)")

typealias Response = (
    code: Int, 
    message: String
)
func resp() -> Response {
    return (502, "No Response")
}
var r = resp()
println("Response is \(r)")
