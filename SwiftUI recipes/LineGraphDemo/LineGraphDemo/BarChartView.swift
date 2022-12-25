
import SwiftUI

struct BarChartView: View {
    
    let values: [Int]
    let labels: [String]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .bottom) {
                
                ForEach(values.indices, id: \.self) { index in
                    
                    let label = labels[index]
                    let value = values[index]
                    
                    VStack {
                        Text("\(value)")
                        Rectangle()
                            .fill(value <= 120 ? Color.red:  Color.blue)
                            .frame(width: 44, height: CGFloat(value))
                        Text(label)
                    }.padding([.leading, .trailing], 8)
                    
                }
                
            }
        }
        
    }
    
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView(values: [10, 20, 30, 40, 50, 20, 30, 40, 50], labels: ["Jan", "Feb", "Mar", "Apr", "May", "Feb", "Mar", "Apr", "May"])
               .background(Color.green)
    
    }
}
