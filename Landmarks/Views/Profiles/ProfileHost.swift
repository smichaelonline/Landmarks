//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Stephanie Michael on 2/12/23.
//

import SwiftUI

struct ProfileHost: View {
  @Environment(\.editMode) var editMode
  @EnvironmentObject var modelDate: ModelData
  @State private var draftProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20){
      HStack {
        Spacer()
        EditButton()
      }
      if editMode?.wrappedValue == .inactive {
        ProfileSummary(profile: modelDate.profile)
      } else {
        ProfileEditor(profile: $draftProfile)
      }
    }
    .padding()
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHost()
      .environmentObject(ModelData())
  }
}
