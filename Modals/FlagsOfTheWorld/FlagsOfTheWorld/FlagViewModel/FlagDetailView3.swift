//
//  FlagDetailView.swift
//  FlagsOfTheWorld
//

import SwiftUI

struct FlagDetailView3: View {
    
    @Binding var flagVM: FlagViewModel3
    
    var body: some View {
        VStack {
            
            Text(self.flagVM.flag)
                .font(.custom("Arial",size: 200))
           
            TextField("Enter country name", text: self.$flagVM.country)
                .padding()
                .fixedSize()
            
            Button("Submit") {
                self.flagVM.showModal.toggle()
            }
        }
    }
}

#if DEBUG
struct FlagDetailView3_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView3(flagVM: .constant(FlagViewModel3()))
    }
}
#endif
