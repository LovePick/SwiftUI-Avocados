//
//  RecipeModel.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
    
}
