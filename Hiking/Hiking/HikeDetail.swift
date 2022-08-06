//
//  HikeDetail.swift
//  Hiking
//
//  Created by mohamed  habib on 06/08/2022.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    
    var body: some View {
        VStack{
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
            
        }
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike:  Hike(name: "Salmonberry Trail", imageURL: "sal", miles: 6))
    }
}
