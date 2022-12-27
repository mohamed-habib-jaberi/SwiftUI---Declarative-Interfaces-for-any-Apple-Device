import UIKit
import SwiftUI

@propertyWrapper
struct Border: View {
    let color: Color
    let width: CGFloat
    var wrappedValue: AnyView

    var body: some View {
        wrappedValue
            .padding(width)
            .background(color)
            .cornerRadius(width)
    }

    init(color: Color, width: CGFloat, wrappedValue: AnyView) {
        self.color = color
        self.width = width
        self.wrappedValue = wrappedValue
    }
}

struct ContentView: View {
    @Border(color: .blue, width: 5, wrappedValue: AnyView(Button(action: {
        // do something
    }) {
        Text("Button")
    })) var button: AnyView

    var body: some View {
        button
    }
}

let view = ContentView()
print(view)
