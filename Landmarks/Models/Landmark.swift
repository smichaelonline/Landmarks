//
//  Landmark.swift
//  Landmarks
//
//  Created by Stephanie Michael on 2/11/23.
//

import Foundation

struct Landmark: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
}
