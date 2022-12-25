

import Foundation

class AnimalService {
    
    static func getAll() -> [Animal] {
        return [
                   Animal(name: "Tiger", description: "This is tiger", image: "🐆"),
                   Animal(name: "Rat", description: "This is rat", image: "🐀"),
                   Animal(name: "Giraffe", description: "This is girrafe", image: "🦒"),
                   Animal(name: "Cat", description: "This is cat", image: "🐈")
               ]
    }
    
}
