//
//  ViewDetailScreen.swift
//  Week4_hetsha
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct ViewDetailScreen: View {
    //referring to dismiss environment variable to programatically discard/close the screen
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading ){
            Text("View Detail Screen")
                .font( .title)
                .fontWeight(.bold)
            Button {
                //dismiss current screen
                dismiss()
            }label: {
                Text("Close this screen")
            }.buttonStyle(.borderedProminent)
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
