//
//  RecipeningModel.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
    
}
