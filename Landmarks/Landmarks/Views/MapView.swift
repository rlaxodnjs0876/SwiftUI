//
//  MapView.swift
//  Landmarks
//
//  Created by 김태원 on 2022/03/15.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                // 뷰가 보일때 setRegion 메서드 실행
                setRegion(coordinate)
            }
    }
    
    // mapView를 해당 좌표로 업데이트 하기 위한 메서드, 외부에서 접근할 일 없기때문에 private
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
