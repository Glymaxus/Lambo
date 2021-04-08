//
//  MainView.swift
//  Lamborghini
//
//  Created by bastien giat on 02/04/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView(lamborghini: lamborghiniData[0])
                .tabItem {
                    Image(systemName: "house")
                    Text("Présentation")
                }
            
            LamborghiniListView()
                .tabItem {
                    Image(systemName: "square.fill.text.grid.1x2")
                    Text("Modèles")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
