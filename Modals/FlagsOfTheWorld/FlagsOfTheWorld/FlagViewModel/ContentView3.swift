//
//  ContentView.swift
//  FlagsOfTheWorld
//

import SwiftUI

struct ContentView3: View {
    
    let flags = ["🇦🇽","🇩🇿","🇵🇰","🇺🇸","🇹🇷","🇧🇷"]
    @State private var flagVM: FlagViewModel3 = FlagViewModel3()
    
    var body: some View {
        List {
            
            Text(self.flagVM.country)
            
            ForEach(self.flags, id: \.self) { flag in
                
                HStack {
                    
                    Text(flag)
                        .font(.custom("Arial",size: 100))
                    Spacer()
                    
                }.onTapGesture {
                    self.flagVM.flag = flag
                    self.flagVM.showModal.toggle()
                }
            }
        }.sheet(isPresented: self.$flagVM.showModal) {
            FlagDetailView3(flagVM: self.$flagVM)
        }
    }
}

#if DEBUG
struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
