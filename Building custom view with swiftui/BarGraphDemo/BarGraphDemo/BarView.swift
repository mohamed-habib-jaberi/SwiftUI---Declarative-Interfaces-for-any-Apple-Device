//
//  BarView.swift
//  BarGraphDemo
//
//  Created by mohamed  habib on 21/12/2022.
//  Copyright © 2022 mohamed JABERI. All rights reserved.
//

import SwiftUI

struct BarView: View {
    
    let report: Report
    @State private var showGraph: Bool = false
    
    var body: some View {
        
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
        
        return VStack {
            
            Text(String(format: "$%.2f",report.revenue))
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: self.showGraph ? CGFloat(yValue) : 0.0)
            
                .onAppear {
                    withAnimation(.spring()) {
                        self.showGraph = true
                    }
            }
            
            Text(report.year)
        }
    }
}
struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(report: Report(year: "2003", revenue: 8500))
    }
}
