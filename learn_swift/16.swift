extension Int {
    func Square() -> Int {
        return (self * self)
    }
}

var x:Int = 9
println("x = \(x), square = \(x.Square())")
