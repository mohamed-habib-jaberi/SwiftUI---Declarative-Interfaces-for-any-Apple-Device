//
//  Card.swift
//  Demo-Gestures
//


import Foundation
import SwiftUI

struct Card: View {
    
    let tapped: Bool
    @State private var scale: CGFloat = 1
    
    var body: some View {
        
        VStack {
            
            Image("cat")
                .resizable()
                .scaleEffect(self.scale)
                .frame(width: 300, height: 300)
                .gesture(MagnificationGesture()
                            .onChanged { value in
                    self.scale = value.magnitude
                })
            
            Text("Card")
                .font(.title)
                .foregroundColor(Color.white)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(self.tapped ? Color.orange : Color.purple)
        .cornerRadius(30)
        
    }
    
}

#if DEBUG

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: true)
    }
}

#endif
