//
//  ContentView.swift
//  BarGraphDemo
//


import SwiftUI

struct ContentView : View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
