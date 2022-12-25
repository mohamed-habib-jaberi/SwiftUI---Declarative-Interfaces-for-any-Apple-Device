
import SwiftUI

struct Stock {
    let price: Double
}

private func getHistoricalStocks() -> [Stock] {
    
    var stocks = [Stock]()
    
    for _ in 1...20 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
        
    }
    
    return stocks
}

private func getYearlyLabels() -> [String] {
    return (2015...2021).map { String($0) }
}

struct ContentView: View {
    
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = getYearlyLabels()
    
    var body: some View {
        NavigationView {
            
            VStack {
                LineChartView(values: prices, labels: labels)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green)
            .foregroundColor(.white)
            
            .navigationTitle("Stocks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
