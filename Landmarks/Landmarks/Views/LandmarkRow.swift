//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 김태원 on 2022/03/15.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark // landmark 정보를 보여줘야 하니 landmark프로퍼티 정의
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0]) // LandmarkRow 뷰 init
    }
}
