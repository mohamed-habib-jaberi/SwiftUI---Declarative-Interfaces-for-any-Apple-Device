

import Foundation
import SwiftUI

struct DishesTableViewControllerPreviews: PreviewProvider, UIViewControllerRepresentable {
    
    typealias UIViewControllerType = DishesTableViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<DishesTableViewControllerPreviews>) -> DishesTableViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: "DishesTableViewController")
    }
    
    func updateUIViewController(_ uiViewController: DishesTableViewController, context: UIViewControllerRepresentableContext<DishesTableViewControllerPreviews>) {
        
    }
    
    static var previews: some View {
        DishesTableViewControllerPreviews() 
    }
    
}
