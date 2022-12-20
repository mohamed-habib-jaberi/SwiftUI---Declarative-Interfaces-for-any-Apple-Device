//
//  ContentView.swift
//  ObservableObjectAnotherExample
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
                .font(.largeTitle)
            Button("Increment Score") {
                self.userSettings.score += 1
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
