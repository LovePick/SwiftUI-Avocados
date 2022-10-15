//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTY
    var recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }//: HSTACK
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }//: HSTACK
            
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }//: HSTACK
            
        }//: HSTACK
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

// MARK: - PREVIEW
struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
