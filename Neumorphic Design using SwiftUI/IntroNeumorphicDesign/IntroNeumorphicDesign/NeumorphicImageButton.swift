

import SwiftUI

struct NeumorphicImageButton: View {
    
    @State private var isPressed: Bool = false
    private var systemeName: String
    private var onTap: () -> Void
    
    var gray: Color {
        return Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
    }
    
    var white: Color {
        return Color("white")
    }
    
    init(systemeName: String, onTap: @escaping () -> Void ){
        self.systemeName = systemeName
        self.onTap = onTap
    }
    
    var body: some View {
        
        Button(action: {
        
            self.isPressed = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.isPressed = false
                self.onTap()
            }

        }) {
            
            // SF Symbols
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .padding(30)
                .foregroundColor(Color("redOne"))
            //  .foregroundColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
        }
        .clipShape(Circle())
        .shadow(color: self.isPressed ? white : gray, radius:  self.isPressed ? 4 : 8, x: 8, y: 8)
        .shadow(color: self.isPressed ? gray : white, radius: self.isPressed ? 4 : 8, x: -8, y: -8)
        .scaleEffect(self.isPressed ? 0.95 : 1.0)
        .animation(.spring())
        
    }
}

struct NeumorphicImageButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicImageButton(systemeName: "heart.fill", onTap: {})
    }
}
