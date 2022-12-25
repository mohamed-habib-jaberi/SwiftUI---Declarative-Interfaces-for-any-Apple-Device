

import Foundation

struct Animal: Hashable {
    let name: String
    let description: String
    let image: String
}

extension Animal {
    
    static var placeholder: Animal {
        return Animal(name: "", description: "", image: "")
    }
    
}
