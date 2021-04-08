//
//  PriceCardView.swift
//  Lamborghini
//
//  Created by bastien giat on 07/04/2021.
//

import SwiftUI

struct RealeaseDateCardView: View {
    var lamborghini: Lamborghini
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Date d'apparition :")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            Text("\(lamborghini.releaseDate)")
                .foregroundColor(.black)
                .font(.system(.body, design: .rounded))
                .padding()
        }//: VSTACK
        .frame(width: 200, height: 100, alignment: .center)
        .background(Color("ColorYellow"))
        .cornerRadius(20)
        
    }
}

struct RealeaseDateCardView_Previews: PreviewProvider {
    static var previews: some View {
        RealeaseDateCardView(lamborghini: lamborghiniData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
