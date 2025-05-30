//
//  ValueScreen.swift
//  Week4_hetsha
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct ValueScreen: View {
    let fruit : Fruit
    var body: some View {
        VStack(alignment: .leading ){
            Text("Value - Destinaiton Screen")
                .font(.title)
                .fontWeight(.bold)
            Text("Fruit :  \(fruit.name)")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 50)
            Spacer()
        }//VStack
            .frame(minWidth:0, maxWidth: .infinity , minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
        
            .navigationTitle(Text("Value -Destinaiton"))
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ValueScreen(fruit:  Fruit.init(name: "Mango"))
}
