class Account {
    var number: Int = 0
    var balance: Float = 0
    let fees: Float = 20

    func display() -> String {
        return ("Account [\(number)] is of balance [\(balance)], less fees [\(balanceLessFees)]")
    }

    var balanceLessFees: Float {
        get {
            return balance - fees
        }

        set(newBalance) {
            balance = newBalance 
        }
    }

    init(number: Int, balance: Float) {
        self.number = number
        self.balance = balance
    }

    deinit {
        println("Account [\(number)] with balance [\(balance)] will be destroyed")
    }

    class func getMaxBalance() -> Float {
        return 10000.0
    }
}

var acc = Account(number: 10, balance: 200)
println("Account 1: \(acc.display())")
println("Max allowed: \(Account.getMaxBalance())")
acc.balanceLessFees = 300
println("-> Account 1: \(acc.display()) ")

class SavingAccount: Account {
    var rate: Float = 0.1

    init(number: Int, balance: Float, rate: Float) {
        self.rate = rate
        super.init(number: number, balance: balance)
    }

    func getInterest() -> Float {
        return balance * rate
    }

    override func display() -> String {
        return "[Saving] \(super.display()) with rate [\(rate)]"
    }
}
var acc2 = SavingAccount(number: 30, balance: 50, rate: 0.01)
println("Account 2: \(acc2.display())")
println("Interest for acc2: \(acc2.getInterest())")
