

import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        return NavigationView {
            self
        }
    }
    
}

struct SettingsView: View {
    
    @State private var animalsExpanded: Bool = true
    let animals = ["🦙", "🦘","🐆","🦛"]
    
    var body: some View {
        Form {
            DisclosureGroup(
                isExpanded: $animalsExpanded,
                content: {
                    HStack {
                        HStack {
                            ForEach(animals, id: \.self) { animal in
                                Text(animal)
                                    .font(.system(size: 50))
                            }
                        }
                        Spacer()
                    }
                },
                label: { Text("Animals") }
            )
            
            DisclosureGroup(
                isExpanded: .constant(true),
                content: { Text("Content") },
                label: { Text("Fruits") }
)
            
            .navigationTitle("Settings")
            
        }.embedInNavigationView()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
