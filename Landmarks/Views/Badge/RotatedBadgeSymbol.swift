//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Stephanie Michael on 2/12/23.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
  
  let angle: Angle
  var body: some View {
    BadgeSymbol()
      .padding(-60)
      .rotationEffect(angle, anchor: .bottom)
  }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
  static var previews: some View {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
  }
}
