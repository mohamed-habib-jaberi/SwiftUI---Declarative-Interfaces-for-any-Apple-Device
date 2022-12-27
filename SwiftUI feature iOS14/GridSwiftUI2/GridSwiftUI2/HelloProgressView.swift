

import SwiftUI

struct HelloProgressView: View {
    
    @State private var downloaded: CGFloat = 0
    
    private func startDownload() {
        
        let timer = Timer(timeInterval: 0.1, repeats: true) { (timer) in
            
            if self.downloaded < 100 {
                self.downloaded += 1
            } else {
                timer.invalidate()
            }
        }
        
        RunLoop.main.add(timer, forMode: .common)
        
    }
    
    var body: some View {
        VStack {
            VStack {
                
                ProgressView("Loading",value: self.downloaded, total: 100)
                
                Button("Download") {
                    self.startDownload()
                }
            }
        }
    }
}

struct HelloProgressView_Previews: PreviewProvider {
    static var previews: some View {
        HelloProgressView()
    }
}
