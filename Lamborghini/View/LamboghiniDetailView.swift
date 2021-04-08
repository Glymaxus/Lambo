//
//  LamboghiniDetailView.swift
//  Lamborghini
//
//  Created by bastien giat on 03/04/2021.
//

import SwiftUI

struct LamboghiniDetailView: View {
    var lamborghini: Lamborghini
    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 4) {
                    Image(lamborghini.image)
                        .resizable()
                        .scaledToFit()
                    
                    VStack {
                        Text(lamborghini.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Rectangle()
                            .frame(width: 120, height: 5, alignment: .center)
                            .foregroundColor(Color("ColorYellow"))
                            .padding(.top, -5)
                    }//: VSTACK
                    .padding()
                    
                    
                    
                    VStack(alignment: .center, spacing: 0) {
                        HStack {
                            Text("Description")
                                .font(.headline)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "book")
                        }//: HSTACK
                        .padding(.vertical)
                        
                        
                        Text(lamborghini.description)
                            .font(.system(.footnote, design: .rounded))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("ColorYellow"))
                            .padding(.horizontal, 5)
                            .padding(.bottom)
                    }//: VSTACK
                    .frame(width: 400, alignment: .center)
                    .background(
                        Image("background")
                            .resizable()
                            .cornerRadius(12)
                )
                    
                    HStack {
                        PriceCardView(lamborghini: lamborghini)
                        RealeaseDateCardView(lamborghini: lamborghini)
                    }
                    .padding(.top)
                    
                    VStack {
                        HStack {
                            Text("Plus de photos")
                                .font(.headline)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "photo")
                        }//: HSTACK
                        .padding(.top)
                        
                        LamboGalleryView(lamborghini: lamborghini)
                            .padding()
                    }
                    
                    
                    
                   
                }//: VSTACK
                .navigationBarTitle(Text("Apprenez en plus : \(lamborghini.name)"), displayMode: .inline)
        }//: NAVIGATIONVIEW
    }
}

struct LamboghiniDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LamboghiniDetailView(lamborghini: lamborghiniData[0])
        }
        .preferredColorScheme(.dark)
    }
}
