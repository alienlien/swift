func printDict(x:Dictionary<String, Int>) {
    println(">> Keys  : \([String](x.keys))")
    println(">> Values: \([Int](x.values))")
    for (k, v) in x {
        println("\(k) -> \(v)")
    }
}

var ages = ["Adam": 80, "Belly": 13, "Charles": 20]
printDict(ages)

var salaries:Dictionary<String, Int> = Dictionary()
salaries["Adam"] = 100
salaries["Belly"] = 5

for (k, v) in ages {
    println("\(k) is of age \(ages[k]!) with salary \(salaries[k])")
}

var x:String?
println("X with value? -> \(x)")
