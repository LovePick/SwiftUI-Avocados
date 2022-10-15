//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTY
    var ripeningStages: [Ripening] = ripeningData
    
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack(){
                
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                        
                    }//: LOOP
                }//: HSTACK
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
                
            }//: VSTACK
        }//: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
