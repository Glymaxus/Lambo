//
//  PriceCardView.swift
//  Lamborghini
//
//  Created by bastien giat on 07/04/2021.
//

import SwiftUI

struct PriceCardView: View {
    var lamborghini: Lamborghini
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Prix de départ:")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            Text("\(lamborghini.formattedPrice)")
                .foregroundColor(.black)
                .font(.system(.body, design: .rounded))
                .padding()
        }//: VSTACK
        .frame(width: 200, height: 100, alignment: .center)
        .background(Color("ColorYellow"))
        .cornerRadius(20)
        
    }
}

struct PriceCardView_Previews: PreviewProvider {
    static var previews: some View {
        PriceCardView(lamborghini: lamborghiniData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
