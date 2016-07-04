func buildMessage(name: String, count: Int = 100) -> String {
    return "[1] \(name), you are customer number \(count)"
}
var msg = buildMessage("Jake")
println("Msg -> \(msg)")
msg = buildMessage("Jake", count: 256)
println("Msg -> \(msg)")

func buildMessageName(#name: String, #count: Int) -> String {
    return "[2] \(name), you are customer number \(count)"
}
msg = buildMessageName(name: "John", count: 10)
println("Msg -> \(msg)")

func sizeConverter(radius: Float) -> (Float, Float) {
    var perimeter = 2 * 3.14 * radius
    var area = 3.14 * radius * radius
    return (perimeter, area) 
}
var param = sizeConverter(10)
println("Param = \(param)")
println("Details: Perimeter = \(param.0), Area = \(param.1)")
var (perimeter, area) = sizeConverter(10)
println("Result: Peri = \(perimeter), Area = \(area)")

func displayStrings(strings: String...) {
    for s in strings {
        println(s)
    }
}
displayStrings("An apple", "This is a test", "That is a pen")

var myVal = 10
func doubleVal(var val: Int) -> Int {
    val *= 2
    return val
}
println("[Var] val = \(myVal), [Double: \(doubleVal(myVal))], val = \(myVal) [Still unchanged]")
func doubleValInout(inout val: Int) -> Int {
    val *= 2
    return val
}
println("[Inout] val = \(myVal), [Double: \(doubleVal(myVal))]")
println("val = \(myVal) [Changed...?? Nooooo]")


func converterFactory(t:String) -> (Float) -> Float {
    switch t {
    case "km", "KM", "Km":
        return toKM
    case "cm", "CM", "Cm":
        return toCM
    default:
        println("Default behavior: return itself.")
    }
    return { (m: Float) -> Float in
        return m
    }
}

func toKM(m:Float) -> Float {
    return m / 1000
}
func toCM(m:Float) -> Float {
    return m * 100
}
var converter = converterFactory("km")
println("KM: \(converter(100))")
converter = converterFactory("cm")
println("CM: \(converter(100))")
