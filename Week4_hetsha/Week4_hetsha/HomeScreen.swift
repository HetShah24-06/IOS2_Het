//
//  HomeScreen.swift
//  Week4_hetsha
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(alignment: .leading ) {
            Spacer()
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.mint)
        
        .navigationTitle(Text("Home Screen"))
        .navigationBarTitleDisplayMode(.inline)
        
        .onAppear(){
            //event triggers when the View appears on the screen or comes in foreground
            print(#function , "Home Screen appeared")
        }
        .onDisappear(){
            //event triggers when View is discarded or removed from foreground
            //perform opertion like saving/synchrnzation data , stop refreshing data , etc.
            print(#function, " Home Screen Disappeared")
        }
    }
}

#Preview {
    HomeScreen()
}
