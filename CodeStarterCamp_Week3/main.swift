import Foundation

var misterLee: Person = Person(name: "mrLee", age: 32, gender: .male, money: 2500)
var missKim: Person = Person(name: "msKim", age: 25, gender: .female, money: 0)
var yagombucks: CoffeeShop = CoffeeShop(name: "yagombucks", barista: misterLee.name, sales: 0)

missKim.work(who: missKim.name, time: 2)

missKim.order(.Americano, of: yagombucks, by: missKim.name)
missKim.order(.Americano, of: yagombucks, by: missKim.name)
missKim.buyAllMenu(who: missKim, to: yagombucks)

yagombucks.todaysCalculateSales(to: yagombucks)
