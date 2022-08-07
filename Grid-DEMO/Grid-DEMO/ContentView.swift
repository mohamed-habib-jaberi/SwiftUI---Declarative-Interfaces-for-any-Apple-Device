//
//  ContentView.swift
//  Grid-DEMO
//
//  Created by mohamed  habib on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        let chunkedDishes = dishes.chunked(into: 3)
        
        return List {
            
            // rows
            ForEach(0..<chunkedDishes.count) { index in
                
                HStack {
                    
                    ForEach(chunkedDishes[index]) { dish in
                        
                        Image(dish.imageURL)
                            .resizable()
                           // .frame(width: 150, height: 150)
                            .scaledToFit()
                        
                    }
                    
                }
                
            }
            
        }
    }
}

//#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//#endif
