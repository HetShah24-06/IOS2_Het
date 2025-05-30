//
//  ContentView.swift
//  Week4_hetsha
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct ContentView: View {

    @State private var showHomeScreen : Bool = false
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
          
          //Programmatically navigating to next Screen
          Button {
              //perform necessary operations to check if the navgation should be allowed or not
              let x = 12
              if (x>10){
                  //perform navigation
                  self.showHomeScreen = true
              }
              } label:{
                  Text("Check condition")
                      .font(.title)
                      .fontWeight(.bold)
                      .foregroundStyle(.indigo)
                      .padding(.top ,25)
              }
          
        Spacer()
      }
      .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .navigationTitle(Text("Week- 4 - Navigation"))
      .navigationBarTitleDisplayMode(.inline)
      .navigationDestination(for: Fruit.self) {
          fruit in ValueScreen(fruit:     fruit)
      }//navigationDestination
      .navigationDestination( isPresented: $showHomeScreen){
          HomeScreen()
      }
        
        .onAppear(){
            //event triggers when the View appears on the screen or comes in foreground
            print(#function , "ContantView - VStack appeared")
        }
        .onDisappear(){
            //event triggers when View is discarded or removed from foreground
            //perform opertion like saving/synchrnzation data , stop refreshing data , etc.
            print(#function, " COntantView - VStack Disappeared")
        }
    } // navigationStack
  
  }//body
}//contantView

#Preview {
  ContentView()
}
