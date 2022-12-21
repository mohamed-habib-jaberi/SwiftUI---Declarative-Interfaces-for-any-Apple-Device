//
//  StarViewRepresentation.swift
//  MoviesApp


import Foundation
import SwiftUI

struct StarViewRepresentation: UIViewRepresentable {
    
    @Binding var selected: Bool
    
    typealias UIViewType = StarView
    
    func makeUIView(context: UIViewRepresentableContext<StarViewRepresentation>) -> StarView {
        let starView = StarView()
        return starView
    }
    
    func updateUIView(_ uiView: StarView, context: UIViewRepresentableContext<StarViewRepresentation>) {
        uiView.selected = self.selected
    }
    
}
