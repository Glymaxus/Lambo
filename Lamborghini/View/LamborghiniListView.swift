//
//  LamborghiniListView.swift
//  Lamborghini
//
//  Created by bastien giat on 02/04/2021.
//

import SwiftUI

struct LamborghiniListView: View {
    var lamborghinis: [Lamborghini] = lamborghiniData
    var body: some View {
        NavigationView {
            List {
                ForEach(lamborghinis) { lamborghini in
                    NavigationLink(
                        destination: LamboghiniDetailView(lamborghini: lamborghini)) {
                        LamborghiniPresentationView(lamborghini: lamborghini)
                    }
                }
            }
            .navigationTitle("Tous les modèles")
        }
    }
}

struct LamborghiniListView_Previews: PreviewProvider {
    static var previews: some View {
        LamborghiniListView()
    }
}
