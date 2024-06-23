//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Mukthar Amiyan on 22/06/24.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundStyle(theme.accentColor)
            .clipShape(.rect(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
