
import SwiftUI

struct MusicPlayerView: View {
    
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        VStack {
            
            HStack {
                
                NeumorphicImageButton(systemName: "arrow.left", size: CGSize(width: 20, height: 20)) {
                    
                }.foregroundColor(Color.black)
                
                Spacer()
                Text("PLAYING NOW")
                Spacer()
                NeumorphicImageButton(systemName: "line.horizontal.3", size: CGSize(width: 20, height: 20)) {
                    
                }.foregroundColor(Color.black)
            }.padding()
            
            ZStack {
                Image("art")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .padding()
                    .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), radius: 8, x: 9, y: 9)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -9, y: -9)
            }.padding()
                .clipShape(Circle().inset(by: 6))
                .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), radius: 10, x: 9, y: 9)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
            
            Spacer()
            
            Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
                .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), radius: 10, x: 6, y: 6)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -6, y: -6)
                .padding()
            Spacer()
            
            HStack {
                
                NeumorphicImageButton(systemName: "backward.fill", size: CGSize(width: 25, height: 25)) {
                    
                }.foregroundColor(Color.black)
                Spacer()
                NeumorphicImageButton(systemName: "stop.fill", size: CGSize(width: 25, height: 25)) {
                    
                }.foregroundColor(Color.black)
                Spacer()
                
                NeumorphicImageButton(systemName: "forward.fill", size: CGSize(width: 25, height: 25)) {
                    
                }.foregroundColor(Color.black)
                
            }.padding()
            
            .edgesIgnoringSafeArea(.all)
            
        }.edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.7940633893, green: 0.8789027929, blue: 0.8980514407, alpha: 1)))
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
