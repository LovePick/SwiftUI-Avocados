//
//  TitleModifier.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(.title, design: .serif))
        .foregroundColor(Color("ColorGreenAdaptive"))
        .padding(8)
    }
}
