//
//  ContentView1.swift
//  FlagsOfTheWorld
//

import SwiftUI

// Display Modal
struct ContentView1: View {
    
    @State private var showModal: Bool = false
    
    var body: some View {
        Button("Show Modal") {
            self.showModal.toggle()
        }.sheet(isPresented: $showModal) {
            Text("I am a Modal")
        }
    }
}

#if DEBUG
struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
#endif
