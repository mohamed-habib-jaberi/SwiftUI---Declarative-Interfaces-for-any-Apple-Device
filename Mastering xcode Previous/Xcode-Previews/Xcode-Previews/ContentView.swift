

import SwiftUI

struct ContentView : View {
    
    let dishes = Dish.all()
    
    var body: some View {
        
        List {
            
            ForEach(dishes , id:\.id) { dish in
                DishCell(dish: dish)
            }
            
        }
        
    }
}

#if DEBUG
struct Content_Preview : PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            if #available(iOS 15.0, *) {
                ContentView()
                    .preferredColorScheme(.dark)
                    .previewInterfaceOrientation(.portrait)
                    .previewLayout(.sizeThatFits)
                    .previewDevice("iPhone 13 Pro Max")
            } else {
                // Fallback on earlier versions
            }
            
        }
        
    }
}
#endif
