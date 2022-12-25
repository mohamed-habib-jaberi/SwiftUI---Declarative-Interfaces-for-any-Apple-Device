

import Foundation
import SwiftUI

struct SharedDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        VStack {

            Text(animal.image)
                .font(.custom("Arial",size: 100))
            Text(animal.name)
            Text(animal.description)

            
        }
    }
}

struct SharedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SharedDetailView(animal: Animal(name: "Cat", description: "This is a cat", image: "🐈"))
    }
}
