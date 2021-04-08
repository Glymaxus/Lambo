//
//  LamboGalleryView.swift
//  Lamborghini
//
//  Created by bastien giat on 06/04/2021.
//

import SwiftUI

struct LamboGalleryView: View {
    var lamborghini: Lamborghini
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(lamborghini.gallery, id: \.self) { image in
                    Image("\(image)")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.white, lineWidth: 4)
                        )
                }
            }
        }
    }
}

struct LamboGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        LamboGalleryView(lamborghini: lamborghiniData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
