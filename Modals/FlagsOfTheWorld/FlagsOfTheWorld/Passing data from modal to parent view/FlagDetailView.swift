//
//  FlagDetailView.swift
//  FlagsOfTheWorld
//

import SwiftUI

//Passing data from modal to parent view
struct FlagDetailView: View {
    
    var flag: String = ""
    
    @Binding var country: String
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            
            Text(self.flag)
                .font(.custom("Arial",size: 200))
            
            TextField("Enter country name", text: $country)
                .padding()
                .fixedSize()
                   
            Button("Submit") {
                self.showModal.toggle()
            }
        }
    }
}

#if DEBUG
struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView(country: .constant("Enter country name"), showModal: .constant(false))
    }
}
#endif
