//
//  CoffeeCellView.swift
//  CoffeeOrderingApp
//
//  Created by mohamed  habib on 20/12/2022.
//  Copyright © 2022 Mohammad JABERI. All rights reserved.
//

import SwiftUI

struct CoffeeCellView: View {
    
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    var body: some View {
        HStack {
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            Text(coffee.name)
                .font(.title)
                .padding([.leading],20)
            Spacer()
            Image(systemName: self.selection == self.coffee.name ? "checkmark": "").padding()
        }.onTapGesture {
            self.selection = self.coffee.name
        }
        .background(Color.gray)
    }
}

struct CoffeeCellView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeCellView(coffee: CoffeeViewModel(coffee: Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5)), selection: .constant("Cappuccino"))
    }
}
