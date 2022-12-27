

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int?
    
    private func starType(index: Int) -> String {
        
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
        
    }
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: self.starType(index: index))
                    .foregroundColor(Color.orange)
                    .onTapGesture {
                        self.rating = index
                }
            }
        }
    }
}

struct LibraryContent: LibraryContentProvider {
    
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
            
            RatingView(rating: .constant(3)),
            title: "Rating Control", category: .control
        
        )
    }
    
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.resizedToFill(width: 150, height: 150)
        )
    }
    
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}


