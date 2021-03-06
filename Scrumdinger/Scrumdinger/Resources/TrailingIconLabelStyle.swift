//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by κΉνμ on 2022/05/31.
//

import SwiftUI

struct TraillingIconLabelStyle: LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TraillingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
