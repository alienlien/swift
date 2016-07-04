import Foundation

enum Species {
    case Dog
    case Cat

    func toString() -> String {
        switch self {
        case .Dog:
            return "Dogggg"
        case .Cat:
            return "Catttt"
        }
    }
}

class Animal {
    var species:Species

    init(species:Species) {
        self.species = species
    }

    func MySpecies() {
        println("Species -> \(species.toString())")
    }

    func Talk() {
        switch species {
        case Species.Dog:
            println("Bark! Bark!")
        case Species.Cat:
            println("Meow! Meow!")
        default:
            println("... I don't know how to talk!")
        }
    }
}

var dog = Animal(species:Species.Dog)
var cat = Animal(species:.Cat)
dog.MySpecies()
cat.MySpecies()
dog.Talk()
cat.Talk()

enum Suit:String {
    case Spade = "Spade"
    case Heart = "Heart"
    case Diamond = "Diamond"
    case Club = "Club"
}

enum Rank:Int {
    case Two = 2
    case Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King, Ace
}

var x = Suit.Heart
println("x is \(x.rawValue)")
var y = Rank.Jack
println("y is \(y.rawValue)")
println("Ace > Jack? \(Rank.Ace.rawValue > Rank.Jack.rawValue)")

enum Result {
    case Success(Int)
    case Error(Int, String)
}

func handleResult(r:Result) {
    switch r {
    case .Success(let status):
        println("Success with status [\(status)]")
    case .Error(let status, let msg):
        println("Error! [Status: \(status), Msg: \(msg)]")
    }
}

func genResult() -> Result {
    if (arc4random_uniform(2) % 2 == 0) {
        return Result.Success(200)
    } else {
        return Result.Error(500, "You Shall Not Pass!!!")
    }

}

for x in 1...10 {
    handleResult(genResult())
}
