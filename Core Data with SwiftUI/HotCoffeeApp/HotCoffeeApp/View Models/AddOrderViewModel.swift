//
//  AddOrderViewModel.swift
//  HotCoffeeApp
//


import Foundation
import SwiftUI

class AddOrderViewModel {
    
    var name: String = ""
    var type: String = ""
    
    func saveOrder() {
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
    }
}
