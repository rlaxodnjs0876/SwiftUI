//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by κΉνμ on 2022/03/29.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date>{
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalData)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalData)!
        return min...max
    }
    
    var body: some View {
        List{
            HStack{
                Text("username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications){
                Text("Enable Notification").bold()
            }
            VStack(alignment: .leading, spacing: 20){
                Text("Seasonal Photo").bold()
                
                Picker("Seasonal Photo",selection: $profile.seasonalPhoto){
                    ForEach(Profile.Season.allCases){ season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            DatePicker(selection: $profile.goalData, in: dateRange, displayedComponents: .date){
                Text("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
