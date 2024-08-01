class CoffeeShop {
    var name: String
    var barista: String {
        didSet {
            print("\(name)의 바리스타가 \(oldValue)에서 \(barista)(으)로 변경되었습니다.")
        }
    }
    var sales: Int
    var menu: [Coffee] = [.Americano, .Cafelatte, .Espresso, .Frappe, .Macchiato]
    var pickUpTable: [Coffee] = []
    
    init(name: String, barista: String, sales: Int) {
        self.name = name
        self.barista = barista
        self.sales = sales
    }
    
    func make(_ coffee: Coffee, from name: String) {
        print("\(barista)(이)가 \(name)(이)가 주문한 \(coffee)(을)를 만듭니다.")
        sales += coffee.discription
        
        pickUpTable.append(coffee)
        
        
        guard let order = pickUpTable.last else {
            return print("아직 주문이 들어오지 않았습니다.")
        }
        print("현재 주문목록: \(order)")
        print("\(name) 님이 주문하신 \(coffee)(이/가) 준비되었습니다. 픽업대에서 가져가주세요.")
        print(MagicNumber.blankPage.rawValue)
    }
    
    
    func todaysCalculateSales(to coffeeShop: CoffeeShop) {
        let calculateCoffee = coffeeShop.pickUpTable.map { (coffeeMenu: Coffee) -> String in
            return "\(coffeeMenu)"
        }
        
        print(
            """
            \(String(repeating: "&", count: 65))
            <오늘의 주문 목록>
            \(calculateCoffee.joined(separator: ", "))
            
            오늘의 수익: \(coffeeShop.sales) 원
            \(String(repeating: "&", count: 65))
            """
        )
    }
    // 커피숍의 하루 매출을 확인하는 함수
}

