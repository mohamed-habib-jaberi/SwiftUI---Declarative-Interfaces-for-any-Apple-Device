

import SwiftUI

struct ContentViewSpringAnimation: View {
    
    @State private var showDetails: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Press me") {
                self.showDetails.toggle()
            }
            
            HStack {
                
                Text("🛬")
                    .font(.custom("Arial",size: 100))
                    .offset(x: self.showDetails ? UIScreen.main.bounds.width - 120 : 0)
                    .animation(.interpolatingSpring(mass: 5.0, stiffness: 100.0, damping: 10, initialVelocity: 0))
                
                Spacer()
                
            }
            
            
        }
    }
}

struct ContentViewSpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewSpringAnimation()
    }
}
