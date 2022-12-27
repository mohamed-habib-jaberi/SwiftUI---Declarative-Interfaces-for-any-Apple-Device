

import SwiftUI

extension Image {
    
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
    
}


struct ContentView: View {
    
    @State private var rating: Int?
    
    var body: some View {
        VStack {
            
            Image("coffee")
                .resizedToFill(width: 175, height: 175)
            
            RatingView(rating: $rating).padding()
            
            Text(rating != nil ? "You rating: \(rating!)" : "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
