//
//  ContentView.swift
//  Week4_hetsha
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      VStack {
         
        Text("Week - 4 - Navigation")
         
        //navlink to ViewdetailScreen
        NavigationLink(destination: ViewDetailScreen()) {
          Text("Go to ViewDetailScreen")
            .font(.title2)
            .fontWeight(.bold)
            .foregroundStyle(.brown)
        }
          NavigationLink(destination: ValueScreen(fruit:  Fruit(name: "Guava"))) {
              Text("Go to Value Screen")
                  .font(.title2)
                  .fontWeight(.bold)
                  .foregroundStyle(.brown)
                  .padding(.top , 25)
          }
          NavigationLink {
              ValueScreen(fruit: Fruit(name: "Apple"))
          } label: {
              Text("Send Apple to value screen")
                  .font(.title2)
                  .fontWeight(.bold)
                  .foregroundStyle(.brown)
                  .padding(.top , 25)
          }
          NavigationLink("Pinapple"){
              ValueScreen(fruit: Fruit(name: "Pinapple"))
          }
//          //Value based Navigation
//          Error - No valid navigationLink
//          NavigationLink(value: Fruit(name: "Lytchi")){
//              Text("Show Litchi")
//                  .font(.title2)
//                  .fontWeight(  .bold)
//                  .foregroundStyle(.brown)
//                  .padding(.top , 25)
//          }
          List{
              NavigationLink("Litchi" , value: Fruit(name: "Litchi"))
              NavigationLink("Banana" , value: Fruit(name: "Banana"))
              NavigationLink("Orange" , value: Fruit(name: "Orange"))
          }
        Spacer()
      }
      .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .navigationTitle(Text("Week- 4 - Navigation"))
      .navigationBarTitleDisplayMode(.inline)
      .navigationDestination(for: Fruit.self) {
          fruit in ValueScreen(fruit:     fruit)
      }
    } // navigationStack
  
  }//body
}//contantView

#Preview {
  ContentView()
}
