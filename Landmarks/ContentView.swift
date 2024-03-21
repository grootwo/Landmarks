//
//  ContentView.swift
//  Landmarks
//
//  Created by 임휘도 on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 350)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130) // 이거 왜 넣은 걸까? 천장에서 지도가 아래로 좀 이동함
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("About Turtle Rock")
                        .font(.headline)
                    Text("Descriptive text goes here.")
                }
            }
            .padding() // 존재 이유를 잘 모르겠음
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
