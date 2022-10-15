//
//  DishesView.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct DishesView: View {
    // MARK: - PROPERTY
    let dishesArray = dishedData
    
    // MARK: - FUNCTION
    func dishedCellLeft(dish:Dished) -> some View{
        
        return (
            HStack(){
                Image(dish.icon)
                    .resizable()
                    .modifier(IconModifier())
                Spacer()
                Text(dish.name)
            }//: HSTACK
        )
    }
    
    func dishedCellRight(dish:Dished) -> some View{
        
        return (
            HStack(){
                
                Text(dish.name)
                Spacer()
                Image(dish.icon)
                    .resizable()
                    .modifier(IconModifier())
                
            }//: HSTACK
        )
    }
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            
            // MARK: - 1st Column
            VStack(alignment: .leading, spacing: 4){
                ForEach(0..<4) { i in
                    dishedCellLeft(dish: dishesArray[i])
                    if( i != 3){
                        Divider()
                    }
                }
                
            }//: VSTACK
            
            // MARK: - 2nd Column
            VStack(alignment: .center, spacing: 16) {
                HStack{
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack{
                    Divider()
                }
            }
            
            
            // MARK: - 3rd Column
            VStack(alignment: .trailing, spacing: 4){
                ForEach(4..<8) { i in
                    dishedCellRight(dish: dishesArray[i])
                    if( i != 7){
                        Divider()
                    }
                }
                
            }//: VSTACK
            
            
        }//: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
        
    }
}



// MARK: - PREVIEW
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
