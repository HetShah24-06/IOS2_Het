//
//  ViewDetailScreen.swift
//  Week4_hetsha
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct ViewDetailScreen: View {
    var body: some View {
        VStack(alignment: .leading ){
            Text("View Detail Screen")
                .font( .title)
                .fontWeight(.bold)
            
            Spacer()
        }
        .frame(minWidth:0, maxWidth: .infinity , minHeight: 0, maxHeight: .infinity)
        .background(Color.yellow)
    
        .navigationTitle("View Detaill Screen")
        .navigationBarTitleDisplayMode(.inline)
    }//body
}//contantView

#Preview {
    ViewDetailScreen()
}
