println("--- Begins! ---")

class Pet {
    var name:String
    weak var bestFriend:Pet?

    init(name:String) {
        self.name = name
    }

    deinit {
        println("Pet with name[\(name)] is destroyeddddd...")
    }
}

var tom:Pet?
var jerry:Pet?

tom = Pet(name:"Tom")
jerry = Pet(name:"Jerry")

tom?.bestFriend = jerry
jerry?.bestFriend = tom

tom = nil
jerry = nil

println("--- Enddddd ---")
