//
//  CarlistItem.swift
//  Week3_HetShah
//
//  Created by Het Shah on 2025-05-30.
//

import Foundation
import SwiftUI
struct CarlistItem: View {
    let car: Car
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(car.model)
                    .font(.headline)
                
                
                Text(car.make)
                    .font(.subheadline)
            }
            Spacer()
            Image(systemName: car.isFavorite ? "star.fill"  : "star")
        }
    }
}
