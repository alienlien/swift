struct AnimalStruct {
    var name = "SSSSSSStruct"

    func Name() {
        println("[Struct] My name is - \(name)")
    }

    mutating func AssignName(s:String) {
        name = s
    }
}

class AnimalClass {
    var name = "Classssssssss"

    func Name() {
        println("[Class] My name is - \(name)")
    }
}

func mutateName(var a1:AnimalStruct, a2:AnimalClass, s:String) {
    a1.name = s
    a2.name = s
    println("--- In the mutation ---")
    a1.Name()
    a2.Name()
    println("--- End of mutation ---")
}

var dog = AnimalStruct()
dog.Name()
dog.name = "Dogggg"
dog.Name()
dog.AssignName("Cat")
dog.Name()

var a1 = AnimalStruct()
var a2 = AnimalClass()
println("Name for a1[\(a1.name)], for a2[\(a2.name)]")
mutateName(a1, a2, "Johnny Walker")
a1.Name()
a2.Name()
