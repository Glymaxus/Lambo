//
//  LamboGridView.swift
//  Lamborghini
//
//  Created by bastien giat on 04/04/2021.
//

import SwiftUI

struct LamboGridView: View {
    let columnSpacing: CGFloat = 10
    let rowSpacing: CGFloat = 10
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
    }
    var lamborghinis: [Lamborghini] = lamborghiniData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(lamborghinis) { lamborghini in
                            LamboGridItemView(lamborghini: lamborghini)
                        
                        
                    }
                }
                
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })
    }
}

struct LamboGridView_Previews: PreviewProvider {
    static var previews: some View {
            LamboGridView()
                .previewLayout(.sizeThatFits)
                .padding()
    }
}
