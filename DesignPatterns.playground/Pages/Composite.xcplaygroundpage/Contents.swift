/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
// Composite

protocol Food {
    func eat()
}

final class Hamburger: Food {
    func eat() {
        print("I'm eating Hamburguer")
    }
}

final class FrenchFries: Food {
    func eat() {
        print("I'm eating French Fries")
    }
}

final class Lunch: Food {
    private var foods = [Food]()
    
    init(foods: [Food]) {
        self.foods = foods
    }
    
    func eat() {
        for food in foods {
            food.eat()
        }
    }
}

let fries = FrenchFries()
let hamburger = Hamburger()

let lunch = Lunch(foods: [fries, hamburger])
lunch.eat()
