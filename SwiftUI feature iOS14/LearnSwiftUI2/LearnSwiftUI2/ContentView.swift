

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.734560, longitude:   -95.393690), latitudinalMeters: 500, longitudinalMeters: 500)
    
    var body: some View {
        
        Map(coordinateRegion: $region)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
