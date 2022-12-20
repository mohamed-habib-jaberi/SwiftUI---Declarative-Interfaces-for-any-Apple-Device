//
//  Order.swift
//  CoffeeOrderingApp


import Foundation

struct Order: Codable {
    
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
    
}
