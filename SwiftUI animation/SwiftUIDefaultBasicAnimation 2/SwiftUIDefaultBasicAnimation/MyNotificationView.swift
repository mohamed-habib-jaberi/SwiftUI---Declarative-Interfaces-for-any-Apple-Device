//
//  MyNotificationView.swift
//  SwiftUIDefaultBasicAnimation
//
//  Created by mohamed  habib on 25/12/2022.
//  Copyright © 2022 Mohamed JABERI. All rights reserved.
//

import SwiftUI

struct MyNotificationView: View {
    @State private var isVisible = false

    var body: some View {
      
            VStack {
                if self.isVisible {
                    MyAnimatedView()
                        .frame(width: UIScreen.main.bounds.width - 10, height: 50)
                        .background(Color.green)
                        .offset(y: -10)
                        .transition(.move(edge: .top))
                }

                Button(action: {
                    self.isVisible.toggle()
                }) {
                    Text("Validate")
                }
            }
        
    }
}


struct MyNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNotificationView()
    }
}

struct MyAnimatedView: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        Text("Notification")

    }
}
