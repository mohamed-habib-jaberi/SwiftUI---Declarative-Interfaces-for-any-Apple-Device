
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            NeumorphicImageButton(systemName: "heart.fill") {
                // onTap event of the button
            }
            .padding()
            
            Text("Hello World")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.8928787708, green: 0.8875712156, blue: 0.8969586492, alpha: 1)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
