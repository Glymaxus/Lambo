//
//  LamboGridView.swift
//  Lamborghini
//
//  Created by bastien giat on 04/04/2021.
//

import SwiftUI

struct LamboGridItemView: View {
    var lamborghini: Lamborghini
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(alignment: .center, spacing: 6) {
                Text(lamborghini.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 1))
        })
    }
}

struct LamboGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        LamboGridItemView(lamborghini: lamborghiniData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
