//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Groo on 3/21/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 200)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130) // 이거 왜 넣은 걸까? 천장에서 지도가 아래로 좀 이동함
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("About \(landmark.name)")
                            .font(.headline)
                        Text(landmark.description)
                    }
                }
                .padding() // 존재 이유를 잘 모르겠음
                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
