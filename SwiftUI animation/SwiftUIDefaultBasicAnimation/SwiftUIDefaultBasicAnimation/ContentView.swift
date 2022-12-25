

import SwiftUI

struct ContentView: View {
    
    @State private var showDetails: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Press me") {
                self.showDetails.toggle()
            }
            
            HStack {
                Text(self.showDetails ? "Hide Details" : "Show Details")
                Image(systemName: "chevron.up.square")
                    .rotationEffect(.degrees(self.showDetails ? 0 : 180))
                    .animation(.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
