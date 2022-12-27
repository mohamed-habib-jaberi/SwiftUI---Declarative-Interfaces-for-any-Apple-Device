
import SwiftUI

@main
struct MoviesAppApp: App {
    
    @StateObject var store = MovieStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
