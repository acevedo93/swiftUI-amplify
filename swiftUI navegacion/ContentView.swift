//
//  ContentView.swift
//  swiftUI navegacion
//
//  Created by David Acevedo on 17/06/24.
//

import SwiftUI

struct MenuItem: Identifiable {
    let name: String
    let id: UUID
    let screen: AnyView
}


private var Menu = [
    MenuItem(name: "api call basic", id: UUID(), screen: AnyView(DetailScreen())),
    MenuItem(name: "maquetacion basic", id: UUID(), screen: AnyView(DetailScreen())),
    MenuItem(name: "animaciones", id: UUID(), screen: AnyView(DetailScreen())),
    MenuItem(name: "tooltips y pop ups", id: UUID(), screen: AnyView(DetailScreen())),
    MenuItem(name: "observable objects", id: UUID(), screen: AnyView(DetailScreen())),
    MenuItem(name: "mvvm", id: UUID(), screen: AnyView(DetailScreen())),
    MenuItem(name: "buttons", id: UUID(), screen: AnyView(DetailScreen())),
    MenuItem(name: "app example", id:UUID(), screen: AnyView(DetailScreen()))
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Learning SWIFT UI AND AMPLIFY")
                List(Menu, id: \.id) { menuItem in
                    NavigationLink(destination: menuItem.screen) {
                        Text(menuItem.name)
                    }
                }
            }
        }
        .navigationBarTitle("Pantalla 1")
    }
    
}

#Preview {
    ContentView()
}
