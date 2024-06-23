//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Mukthar Amiyan on 23/06/24.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
