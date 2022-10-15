//
//  ContentView.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    var header: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(header) { header in
                            HeaderView(header: header)
                        }
                        
                    }//: HSTACK
                }//: SCROLL VIEW
                
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - AVOCADO FACTS
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }
                    }//: HSTACK
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }//: SCROLL
                
                // MARK: - RECIPE CARD
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                
                // MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                    
                }//: VSTACK FOOTER
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
              
                
            }//: VSTACK
            
        }//: SCROLL VIEW
        .edgesIgnoringSafeArea(.all)
       
        
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
