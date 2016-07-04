class Cat {
    var name = ""
    var age = UInt32(0)
}
var oa = Cat()
println("OA = \(oa), name: \(oa.name)")
oa.name = "OA"
oa.age = 15
println(">> OA = \(oa) with name[\(oa.name)] and age[\(oa.age)]")

let pi:Float = 3.14
class Circle {
    init(initRadius:Float) {
        println(">> Initialize with radius[\(initRadius)]")
        radius = initRadius
    }

    init(initDiameter:Float) {
        println(">> Initialize with diameter[\(initDiameter)]")
        radius = initDiameter / 2
    }

    init() {}

    var radius:Float = 1 {
        willSet {
            println("Nooo, the radius is going to change from [\(radius)] to [\(newValue)]")
        }
        didSet {
            println("Sighhhhh, the radius is already changed: [\(oldValue)] -> [\(radius)]")
        }
    }

    var diameter:Float {
        get {
            return 2 * radius
        }
        set(new_diameter) {
            radius = new_diameter / 2
        }
    }

    func perimeter() -> Float {
        return 2 * pi * radius 
    }

    func area() -> Float {
        return pi * radius * radius
    }

    deinit{
        println("Good Bye!!!! I'm going to Die (with radius \(radius))!!!!!!")
    }
}
func printCircle(c:Circle) {
    println("--------------------------")
    println("Radius   : \(c.radius)")
    println("Diameter : \(c.diameter)")
    println("Perimeter: \(c.perimeter())")
    println("Area     : \(c.area())")
    println("--------------------------")
}

var c = Circle(initRadius: 20)
c.radius = 10
printCircle(c)
c.diameter = 100
printCircle(c)
var d = Circle(initDiameter: 13)
printCircle(d)
var e = Circle()
printCircle(e)
var f: Circle?
f = Circle(initRadius: 13)
if let x = f {
    printCircle(x)
}
f!.diameter = 3
printCircle(f!)
f = nil

class TestObj {
    var myList = ["a", "b", "c", "d"]
    subscript(index:Int) -> String {
        return "List[\(index)] = \(myList[index])"
    }
}
var obj = TestObj()
println(obj[1])


class Coder {
    var editor = "Vim"
    
    init() {}

    func WriteCode() {
        println("I'm coding with my favorite editor [\(editor)]")
    }
}

class Gopher:Coder {
    override init() {
        super.init()
        editor = "Sublime"
    } 
}

class Swifter:Coder {
    override var editor:String {
        didSet {
            println("I'm changing editor now... [\(oldValue)] -> [\(editor)]")
        }
    }
    override func WriteCode() {
        println("Write... Write code with \(editor)?")
    }
}
var alien = Gopher()
alien.WriteCode()
var sean = Swifter()
sean.WriteCode()
sean.editor = "Emacs"
sean.WriteCode()

class NamedCoder:Coder {
    var name:String

    required init(n:String) {
        name = n
    }
}
class AlienCoder:NamedCoder {
    required init(n:String) {
        super.init(n: n)
    }

    func WhoAmI() {
        println("Who am I? -> (\name)")
    }
}
var alien2 = NamedCoder(n: "Alien2")
println("Name -> \(alien2.name)")
var alien3 = AlienCoder(n: "Alien3")
alien3.WhoAmI()
