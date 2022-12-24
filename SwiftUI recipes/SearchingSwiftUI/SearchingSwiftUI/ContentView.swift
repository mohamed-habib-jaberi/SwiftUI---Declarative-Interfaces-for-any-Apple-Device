


import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm: String = ""
    let names = ["Azam","Jake","Alex","Mary","Jack","Jerry"]
    
    var body: some View {
        
        List {
            
            // SearchBar is UIViewRepresentable
            SearchBar(text: $searchTerm)
            
            ForEach(self.names.filter {
                self.searchTerm.isEmpty ? true :
                    $0.localizedCaseInsensitiveContains(self.searchTerm)
            },id: \.self) { name in
                Text(name)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
