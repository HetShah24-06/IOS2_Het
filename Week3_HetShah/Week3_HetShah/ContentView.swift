//
//  ContentView.swift
//  Week3_HetShah
//
//  Created by Het Shah on 2025-05-30.
//

import SwiftUI

struct ContentView: View {
    @State private var birthDate : Date = Date.now
    var body: some View {
//        VStack {
////
////            DatePicker("Birthdate : ", selection: $birthDate,in: ...Calendar.current.date(byAdding: .year, value: -16, to: Date.now)!,displayedComponents: .date)
////                .datePickerStyle(.automatic)
////
////            Text("Birthdate : \(birthDate)" )
////            Image(systemName: "globe")
////                .imageScale(.large)
////                .foregroundStyle(.tint)
////            Text("Hello, world!")
////            List_Exapmle()
//            List_Example_2()
//        }
//        .padding()
        List_Exapmle()
    }
}

#Preview {
    ContentView()
}
