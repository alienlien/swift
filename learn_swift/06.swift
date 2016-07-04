// printArray prints the array input.
func printArray(x:[Int]) {
    println("Array is: \(x)")
}


var array1:[Int]
array1 = [1, 2, 4]
var array2:[Int] = [1, 1, 2, 3]
var array3 = [3, 4, 5]
printArray(array1)
printArray(array2)
printArray(array3)

array1.append(99)
array1 += array2
printArray(array1)
printArray(Array(array1[2...4]))

array1.insert(101, atIndex: 3)
printArray(array1)
array1.insert(-1, atIndex: 0)
printArray(array1)

func square(x:[Int]) -> [Int] {
    var y = [Int]()
    println("-----------------------------------")
    for (i, v) in enumerate(x) {
        println("Begin to square the \(i)-th element: \(v)")
        y.append(v * v)
    }
    println("-----------------------------------")
    return y
}

var array4 = square(array1)
printArray(array4)

var array5 = [Int](count: 10, repeatedValue: 13)
printArray(array5)
