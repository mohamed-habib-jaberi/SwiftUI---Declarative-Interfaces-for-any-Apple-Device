//
//  ContentView.swift
//  CoreImageSwiftUIIntegration


import SwiftUI

struct ContentView: View {
    
    let images = ["cat1","dog","tree","mountains"]
    @State private var selectedImage = ""
    
    @ObservedObject private var imageDetectionVM: ImageDetectionViewModel
    private var imageDetectionManager: ImageDetectionManager
    
    init() {
        self.imageDetectionManager = ImageDetectionManager()
        self.imageDetectionVM = ImageDetectionViewModel(manager: self.imageDetectionManager)
    }
    
    var body: some View {
        NavigationView {
            
            VStack {
                ScrollView([.horizontal]) {
                    HStack {
                        ForEach(self.images,id: \.self) { name in
                            Image(name)
                                .resizable()
                                .frame(width: 300, height: 300)
                                .padding()
                                .onTapGesture {
                                    self.selectedImage = name
                                }.border(Color.black, width: self.selectedImage == name ? 10 : 0)
                        }
                    }
                }
                
                Button("Detect") {
                    self.imageDetectionVM.detect(self.selectedImage)
                }.padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                
                Text(self.imageDetectionVM.predictionLabel)
            }
            
            .navigationBarTitle("Core ML")
            
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
