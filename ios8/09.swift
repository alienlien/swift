func printBoundary() {
    println("----------------------")
}

for var i = 0; i < 5; i++ {
    println("Value = \(i)")
}
printBoundary()

for index in 0...5 {
    println("[...] Value = \(index)")
}
printBoundary()

for index in 0..<5 {
    println("[..<] Value = \(index)")
}
printBoundary()

for char in "This is a test" {
    println("Char = \(char)")
}
printBoundary()

var count = 0
var testString = "This is a string ohohoh"
for _ in testString {
    count++
}
println("String[\(testString)] has \(count) chars")
