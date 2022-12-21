//
//  ContentView.swift
//  Night-Shift-Form

import SwiftUI

struct ContentView : View {
    
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTillTomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header:
                            Text("Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors")
                            .padding(5)
                            .lineLimit(nil)) {
                    
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    
                    HStack {
                        
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: Text("Scheduled Settings")) {
                            VStack {
                                Text("Sunset").foregroundColor(Color.blue)
                                Text("Sunrise").foregroundColor(Color.blue)
                            }
                        }.fixedSize()
                        
                    }
                }
                
                Section(header: Text("Section 2").padding()) {
                    Toggle(isOn: $manuallyEnabledTillTomorrow) {
                        Text("Manually Enable it till tomorrow")
                    }
                }
                Section(header: Text("COLOR TEMPERATURE").padding()) {
                    
                    HStack {
                        Text("Less Warm")
                        Slider(value: $colorTemperature)
                        Text("More Warm")
                    }
                    
                }
                
            }
            
            .navigationBarTitle(Text("Setting"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
