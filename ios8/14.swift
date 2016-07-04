func testEmpty(a: [String]) -> String {
    if a.isEmpty {
        return "Sure, the list is empty."
    }
    return "No, it is not empty: \(a)"
}
println(testEmpty([String]()))
println(testEmpty(["a", "z"]))

var alphabets = [
    "a": "apple",
    "b": "book",
    "c": "cat"
]
for (char, word) in alphabets {
    println("key: \(char), value: \(word)")
}
