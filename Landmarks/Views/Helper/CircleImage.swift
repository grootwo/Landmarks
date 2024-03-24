//
//  CircleImage.swift
//  Landmarks
//
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 6)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
