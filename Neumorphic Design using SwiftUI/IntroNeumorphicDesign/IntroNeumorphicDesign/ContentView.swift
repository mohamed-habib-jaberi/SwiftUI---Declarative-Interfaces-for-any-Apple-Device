

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
//            NeumorphicImageButton(systemeName: "heart.fill" , onTap: {})
//                .padding()
            
            NeumorphicImageButton(systemeName: "heart.fill") {
                // onTap event of the button
            }.padding()
            
            Text("Hello World")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
