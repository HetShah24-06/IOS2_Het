//
//  List_Example2.swift
//  Week3_HetShah
//
//  Created by Het Shah on 2025-05-30.
//

import Foundation
import SwiftUI
struct List_Example_2: View {
    
    @State private var hyperCars = Car.hyperCarList()
    
    var body: some View {
        VStack {
            DisclosureGroup("Hyper Cars"){
                ForEach(hyperCars){ car in
                }
                .listRowSeparator(.visible)
                .listRowBackground(
                    Capsule()
                        .fill(Color.teal).padding(2)
                )
            }
        }
    }
}

#Preview {
    List_Example_2()
}
