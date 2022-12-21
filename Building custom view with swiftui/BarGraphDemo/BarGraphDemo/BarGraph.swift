//
//  BarGraph.swift
//  BarGraphDemo
//


import Foundation
import SwiftUI

struct BarGraph: View {
    
    let reports: [Report]
    
    var body: some View {
        
        VStack {
            
            HStack(alignment: .lastTextBaseline) {
               
                ForEach(self.reports, id: \.year) { report in
                    BarView(report: report)
                }
                
                
            }
            
        }
        
    }
    
}

struct BarGraph_Previews: PreviewProvider {
    
    static var previews: some View {
        BarGraph(reports: Report.all())
    }
    
}

