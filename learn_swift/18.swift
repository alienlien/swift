func returnItSelf<T> (x:T) -> T {
    return x
}

func printAnything<T> (x:T) {
    println("I am ... \(x)")
}

printAnything("This is a test")
printAnything(returnItSelf(Int(100)))

class LIFOQueue<T> {
    var elements:[T] = [T]()

    init() {}

    func Enqueue(x:T) {
        elements.append(x)
        println("[Enqueue(\(x))] Queue -> \(elements)")
    }

    func Dequeue() -> T? {
        if elements.count == 0 {
            println("I am empty...")
            return nil
        }

        var x = elements.removeAtIndex(0)
        println("[Dequeue(\(x))] Queue -> \(elements)")
        return x
    }

    func DequeueAll() {
        for x in 1...elements.count {
            self.Dequeue()
        }
    }
}

var q1 = LIFOQueue<Int>()
q1.Enqueue(1)
q1.Enqueue(3)
q1.Enqueue(5)
q1.Dequeue()
q1.Dequeue()
q1.Dequeue()
q1.Dequeue()

var q2 = LIFOQueue<String>()
q2.Enqueue("Mike")
q2.Enqueue("Lora")
q2.Enqueue("Zack")
q2.DequeueAll()

protocol Numeric {
}

extension Int:Numeric {
}
extension Float:Numeric {
}

func printNumericGeneric<T:Numeric> (x:T) {
    println("Generic --> \(x)")
}

var n1 = Int(100)
var n2 = Float(5.4)

printNumericGeneric(n1)
printNumericGeneric(n2)

func printNumeric(x:Numeric) {
    println("No need generic --> \(x)")
}

printNumeric(n1)
printNumeric(n2)
