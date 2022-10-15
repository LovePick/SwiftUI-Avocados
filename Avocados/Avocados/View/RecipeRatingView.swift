//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTY
    var recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

// MARK: - PREVIEW
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
