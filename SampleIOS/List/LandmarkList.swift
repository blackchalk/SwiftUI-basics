//
//  LandmarkList.swift
//  SampleIOS
//
//  Created by Alvin Raygon on 3/8/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Embed the dynamically generated list of landmarks in a NavigationView.
        NavigationView {
            /*
             Lists work with identifiable data. You can make your data identifiable in one of two ways: by passing along with your data a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.
             */
            List(landmarks) { landmark in
                // Inside the list’s closure, wrap the returned row in a NavigationLink, specifying the LandmarkDetail view as the destination.
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
        LandmarkList()
            // By default, previews render at the size of the device in the active scheme. You can change
            // the preview device by calling the previewDevice(_:) modifier method.
            .previewDevice(PreviewDevice(rawValue: deviceName))
            // Use the previewDisplayName(_:) modifier to add the device names as labels for the previews.
            .previewDisplayName(deviceName)
        }
    }
}
