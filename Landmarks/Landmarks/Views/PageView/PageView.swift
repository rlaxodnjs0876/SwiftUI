//
//  PageView.swift
//  Landmarks
//
//  Created by 김태원 on 2022/03/30.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages : [Page]
    
    var body: some View {
    PageViewController(pages: pages)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
