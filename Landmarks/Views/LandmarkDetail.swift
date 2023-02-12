//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

struct LandmarkDetail: View {
  
  var landmark: Landmark
  
  var body: some View {
    VStack {
      
      MapView(coordinate: landmark.locationCoordinate)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130)
      
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
        
        HStack {
          Text("Joshua Tree National Park")
          Spacer()
          Text("California")
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
        
        Divider()
        
        Text("About Turtle Rock")
          .font(.title2)
        Text("Description")
      }
      .padding()
      Spacer()
    }
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: landmarks[0])
  }
}
