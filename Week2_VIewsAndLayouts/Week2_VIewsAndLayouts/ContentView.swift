//
//  ContentView.swift
//  Week2_VIewsAndLayouts
//
//  Created by Het Shah on 2025-05-16.
//

import SwiftUI

enum AppTheme : String, CaseIterable , Identifiable{
    case light = "Light"
    case dark = "Dark"
    var id : String { self.rawValue}
}
struct Contact : Identifiable , Hashable{
    let id = UUID()
    let name : String
    let initials : String
    let phoneNumber : String
}
let contactList : [Contact] = [
Contact(name: "Het", initials: "HS", phoneNumber: "123523546"),
Contact(name: "Gunjan", initials: "GK", phoneNumber: "546497577"),
Contact(name: "Kiran", initials: "KG", phoneNumber: "954534559"),
Contact(name: "Ganpat", initials: "GT", phoneNumber: "657467656"),
Contact(name: "Om", initials: "OH", phoneNumber: "456567567")
]
let colors = [Color.red , Color.blue , Color.brown , Color.green , Color.gray]

struct ContentView: View {
    let cities = ["Toronto", "Brampton","Etobicoke" , "Niagra"]
    @State private var selectedCity = "Brampton"
    @State private var selectedTheme : AppTheme = .dark
    @State private var quantity : Int = 1
    @State private var isRegistered : Bool = true
    
    private var colorScheme : ColorScheme{
        switch selectedTheme {
        case .light:
                .light
        case .dark:
                .dark
        }
    }
    
    var body: some View {
        NavigationStack{
            Form{
                
                Section(header: Text("Choose a city")){
                    Picker("Choose a City", selection: $selectedCity){
                        ForEach(cities, id: \.self){
                            city in Text(city)
                        }
                    }.pickerStyle(.navigationLink) // view for cities
                }//section
                
                Section(header: Text("Choose a theme")){
                    Picker("Choose a Theme", selection: $selectedTheme){
                        ForEach(AppTheme.allCases , id: \.self){
                            theme in Text(theme.rawValue)
                        }
                    }.pickerStyle(.segmented) // view for MODE
                }//section
                Section(header: Text("Quantity")){
                    Stepper(value: $quantity, in: 1...10){
                        Text("Quantity: \(self.quantity)")
                    }
                }
                Section(header: Text("Prefference") ){
                    Toggle("Registered User ?", isOn: $isRegistered)
                }
                
                Section(header: Text("Layout Example")){
                    VStack(){
                        Text("VStack Content")
                            .font(.headline)
                        Rectangle()
                            .fill(Color("Rectangle"))
                            .frame( height: 100)
                        Circle()
                            .fill(Color("Circle")) // using Assets colorset
                            .frame(height : 70)
//                        Circle()
//                            .fill(Color.red)
//                            .frame(height : 70)// Hardcode for color
                        HStack {
                            Circle()
                                .fill(Color.cyan)
                                .frame(height: 70)
                            Rectangle()
                                .fill(Color.red)
                                .frame(height: 70)
                            Circle()
                                .fill(Color.green)
                                .frame(height: 70)
                            Rectangle()
                                .fill(Color.red)
                                .frame(height: 70)
                        }
                    }
                    //VStack
                    .padding()
                    .background(Color.yellow.opacity(0.3))
                }
                Section(header: Text("Contects")){
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(contactList, id: \.self){contact in
                                VStack{
                                    ZStack{
                                        Circle()
                                            .fill(colors.randomElement()!)
                                            .frame(width: 100, height: 70)
                                        Text(contact.initials )
                                            .foregroundStyle(Color.white)
                                            .font(.system(size: 30))
                                    }
                                }}
                        }//LazyHstack
                    }
                  
                }
                Section(header: Text("grid Example")){
                    Grid(alignment:.leadingFirstTextBaseline , horizontalSpacing: 20 , verticalSpacing: 15){
                        GridRow{
                            Text("Name")
                            Text("Initials")
                            Text("phone Number")
                        }
                        .font(.title3)
                        Divider()
                        
                        ForEach(contactList) { contact in
                            GridRow(alignment: .firstTextBaseline){
                                Text(contact.name)
                                Text(contact.initials)
                                    .gridColumnAlignment(.center)
                                Text(contact.phoneNumber)
                                    .gridColumnAlignment(.trailing)
                            }
                            Divider()
                            
                        }
                    }
                }
                }//Form
                .navigationTitle("Views and Layout")
                .navigationBarTitleDisplayMode(.inline)
                // navigaitiontitle
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        Menu{
                            Button{
                                //perform operation
                                selectedTheme = .dark
                            }label: {
                                Text("Set Dark Mode")
                            }
                            
                            Button{isRegistered.toggle()}
                        label: {
                            Text("Reset Swich")
                        }
                            
                        }
                    label: {
                        
                        
                        Image(systemName: "gear")
                            .foregroundColor(.gray)
                    }
                    }
                }
            }
            .preferredColorScheme(colorScheme)
        }
    }
    
    #Preview {
        ContentView()
    }

