
import Foundation
import SwiftUI

struct DishCell: View {
    
    let dish: Dish
    
    var body: some View {
        
        HStack {
            
            Image(dish.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(dish.name)
                Text("$\(dish.price)")
                    .foregroundColor(Color.green)
            }
            
        }.padding(5)
        
        
    }
    
}

#if DEBUG
struct DishCell_Preview: PreviewProvider {
    static var previews: some View {
        
        Group {
            /*
            DishCell(dish: Dish.all()[0]).colorScheme(.dark).previewLayout(.sizeThatFits)
           
            DishCell(dish: Dish.all()[0]).colorScheme(.light)
            DishCell(dish: Dish.all()[0]).previewDevice("iPhone SE")
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraSmall)
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge)
             */
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            
        }
        
    }
}
#endif
