//
//  MapView.swift
//  Landmarks
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
  // creates a location coordinate object referred to in function below
  var coordinate: CLLocationCoordinate2D
  //variable to hold the region information for map view
  @State private var region = MKCoordinateRegion()
  
  var body: some View {
    // view returns new coordinates before view appears to user
    Map(coordinateRegion: $region)
      .onAppear{
        setRegion(coordinate)
      }
  }
  
  // function sets region as pinpointed by coordinates in data file.
  private func setRegion(_ coordinate: CLLocationCoordinate2D) {
    region = MKCoordinateRegion(
      center: coordinate,
      // indicates zoom level
      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 59.980167, longitude: -152.665167))
  }
}
