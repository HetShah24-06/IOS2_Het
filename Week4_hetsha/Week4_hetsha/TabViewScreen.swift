//
//  TabViewScreen.swift
//  Week4_hetsha
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct TabViewScreen: View {
    var body: some View {
        TabView{
          
            ViewDetailScreen()
                .tabItem {
                Image( systemName : "person")
                Text("Detail")
            }
            HomeScreen()
                .tabItem {
                Image( systemName : "ladybug.fill")
                Text("Home")
            }
            ValueScreen(fruit: Fruit(name: "Sapota"))
                .tabItem {
                
                Image( systemName : "snowflake")
                Text("Value")
            }
        }//Tabview
    }
}

#Preview {
    TabViewScreen()
}
