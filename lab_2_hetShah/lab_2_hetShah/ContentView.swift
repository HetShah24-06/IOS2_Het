//
//  ContentView.swift
//  lab_2_hetShah
//
//  Created by Het Shah on 2025-05-23.
//

import SwiftUI

enum AppTheme: String, CaseIterable, Identifiable {
    case light = "Light"
    case dark = "Dark"
    
    var id : String {self.rawValue}
}

struct ContentView: View {
    
    private var kitList : [String] = [
        "survival kits",
        "radiation protection kit",
        "gas masks",
        "fire protection kits"
    ]
    
    @State private var house_Address : String = "";
    @State private var number_Of_person : Int = 0;
    @State private var kit_Selection : String = "fire protection kits";
    @State private var isAvailabe : Bool = false
    @State private var hasKitAvailbale : Bool = false;
    @State private var alert: String = "";
    @State private var selectedTheme: AppTheme = .light
    
    private var colorScheme: ColorScheme {
        switch selectedTheme {
        case .light:
                .light
        case .dark:
                .dark
        }
    }
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Select Your Theme")) {
                    
                    Picker("Choose a Theme", selection: $selectedTheme) {
                        ForEach(AppTheme.allCases, id: \.self) { theme in
                            Text(theme.rawValue)
                        }
                    }.pickerStyle(.segmented)
                } //Section for Theme
                
                Section(header: Text("House Address")) {
                    TextField("Enter House Address", text: $house_Address)
                }
                Section(header: Text("Number OF People in household")) {
                    Stepper(value: $number_Of_person, in: 1...10) {
                        Text("\(number_Of_person)")
                    }
                }
                Section(header: Text("Has already Recieved kit.?")) {
                    Toggle("Recieved or Not ? ", isOn: $hasKitAvailbale)
                }
                Section(header: Text("Select Your Kit")) {
                    Picker("Select Your Kit ",selection: $kit_Selection){
                        ForEach(kitList, id: \.self) { kit in
                            Text(kit)}
                    }
                }
            }
            Button{
                if(self.house_Address.isEmpty)
                {
                    alert = "Please Enter Your Home Address"
                }
                else if (!(self.number_Of_person > 0)){
                    alert = "Minimum One kit per Household is required";
                }
                else if (self.hasKitAvailbale){
                    alert = "You already have a kit so you cannot get another kit "
                }
                else{
                    alert = "We have recieve your order for \(kit_Selection) and it will be processed soon and delivered at \(house_Address)";
                }
                isAvailabe = true;
            } label: {
                Text("Place Order")
            }.alert(isPresented: $isAvailabe, content: {
                Alert(
                    title: Text("Alert"),
                    message: Text(alert),
                    dismissButton: .default(Text("OK"))
                )
            }) // Alert
            
        } // Form
        .navigationTitle("Het Shah")
        .navigationBarTitleDisplayMode(.inline)
        .preferredColorScheme(colorScheme)
    } // Navstack
       
}


#Preview {
    ContentView()
}
