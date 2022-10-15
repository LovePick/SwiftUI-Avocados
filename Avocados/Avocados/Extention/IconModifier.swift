//
//  IconModifier.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import Foundation
import SwiftUI

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}


