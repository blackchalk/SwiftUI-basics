//
//  PageView.swift
//  SampleIOS
//
//  Created by Alvin Raygon on 4/1/21.
//

import SwiftUI

/**
 To prepare for adding a custom UIPageControl, you need a way to track the current page from within PageView.

 To do this, you’ll declare a @State property in PageView, and pass a binding to this property down to the PageViewController view. The PageViewController updates the binding to match the visible page.
 */

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
