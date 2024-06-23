//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Mukthar Amiyan on 22/06/24.
//

import SwiftUI

struct TrailingIconLabelStyle : LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
    
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
