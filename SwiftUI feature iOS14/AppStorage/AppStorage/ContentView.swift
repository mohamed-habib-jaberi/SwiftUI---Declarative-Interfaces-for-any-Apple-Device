//
//  ContentView.swift
//  AppStorage
//
//  Created by mohamed  habib on 28/12/2022.
//

import SwiftUI

struct Settings: Codable {
    let darkMode: Bool
    let name: String
}

struct ContentView: View {
    
    @AppStorage("settings")
    private var settingsData: Data = Data()
    @State private var output: String = ""
    
    
    var body: some View {
        
        Text(output)
        
        Button("Load from App Storage"){
            
                   let decoder = JSONDecoder()
                   do {
                       let settings = try decoder.decode(Settings.self, from: settingsData)
                       
                       output = " isDarkMode: \(settings.darkMode), name: \(settings.name)"
                   } catch {
                       print(error)
                   }
               }
               .padding()
        
        
        Button("Save in App Storage"){
            
                   // Create an instance of the Settings object
                   let settings = Settings(darkMode: false, name: "jaberi")
                   
                   // Encode the Settings object to Data using JSONEncoder
                   let encoder = JSONEncoder()
                   do {
                       self.settingsData = try encoder.encode(settings)
                   } catch {
                       print(error)
                   }
               }
               .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
