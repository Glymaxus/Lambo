//
//  LamborghiniPresentationView.swift
//  Lamborghini
//
//  Created by bastien giat on 02/04/2021.
//

import SwiftUI

struct LamborghiniPresentationView: View {
    var lamborghini: Lamborghini
    var body: some View {
        HStack {
            Image(lamborghini.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(lamborghini.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorYellow"))
                
                Text(lamborghini.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.vertical, 4)
            }
        }
    }
}

struct LamborghiniPresentationView_Previews: PreviewProvider {
    static var previews: some View {
        LamborghiniPresentationView(lamborghini: lamborghiniData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
