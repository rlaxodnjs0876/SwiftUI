//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by 김태원 on 2022/06/14.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error:Error, guidance:String){
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
