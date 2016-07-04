func testTemp(t:Int) {
    switch (t) {
        case 0..<10:
            println("靠盃好冷: \(t)")
        case 10..<20:
            println("稍微冷一點，但還可以: \(t)")
        case 20..<30:
            println("不錯喔: \(t)")
        case 30..<40:
            println("好熱啊........ \(t)")
        default:
            println("... 溫度計壞掉了吧？ \(t)")
    }
}

testTemp(-20)
testTemp(23)
testTemp(100)
