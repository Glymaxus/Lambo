//
//  ContentView.swift
//  Lamborghini
//
//  Created by bastien giat on 02/04/2021.
//

import SwiftUI

struct ContentView: View {
    var lamborghini: Lamborghini
    @State private var isShowingBrand: Bool = true
    @State private var isShowingFerruccio: Bool = false
    var body: some View {
            ScrollView {
                ZStack {
                    Image(lamborghini.image)
                        .resizable()
                        .scaledToFit()
                    
                    Text("Bienvenue chez Lamborghini")
                        .foregroundColor(Color("ColorYellow"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .shadow(color: .black, radius: 1 )
                    
                    
                } //: ZStack
                
                VStack(alignment: .center, spacing: 0) {
                    Text("Presentation")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorYellow"))
                    
                    Rectangle()
                        .fill(Color("ColorYellow"))
                        .frame(width: 200, height: 3, alignment: .center)
                        .padding()
                    
                    Text("La marque Lamborghini fut inventée en 1963 par Feruccio Lamborghini")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    ZStack(alignment: .bottomTrailing) {
                        Image("ferruccio-lamborghini")
                            .resizable()
                            .scaledToFit()
                        
                        Text("Ferruccio Lamborghini")
                            .foregroundColor(.black)
                            .background(Color.white)
                            
                    }//: ZSTACK
                    
                    HStack {
                        Text("En savoir plus")
                            .fontWeight(.semibold)
                        
                        Image(systemName: "info.circle")
                    }
                    .foregroundColor(Color("ColorYellow"))
                    .font(.title)
                    .padding(.top)
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            isShowingBrand = true
                            isShowingFerruccio = false
                        }, label: {
                                Text("La marque")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .fontWeight(.heavy)
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            isShowingBrand = false
                            isShowingFerruccio = true
                        }, label: {
                                Text("Le fondateur")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .fontWeight(.heavy)
                        })
                        
                        Spacer()
                    }//: HSTACK
                    .padding(.top, 10)
                    
                    Rectangle()
                        .fill(Color("ColorYellow"))
                        .frame(width: isShowingBrand ? 100 : 110, height: 3, alignment: .center)
                        .offset(x: isShowingBrand ? -90 : 85)
                        .padding(.top, 4)
                        .animation(.linear)
                    
                    
                    if isShowingBrand {
                            Text("L'entreprise est d'abord spécialisée dans la construction de tracteurs agricoles destinés à répondre à une demande croissante d'une Italie dévastée par la guerre et en pleine reconstruction.\n\nAyant fait fortune en à peine dix ans, Ferruccio Lamborghini décide d'assouvir sa passion pour les « belles mécaniques » et les GT italiennes. \nDésireux de produire des automobiles plus performantes, plus sophistiquées et plus fiables que les Ferrari et Maserati, il fonde, le 30 octobre 1963, la firme Automobili Lamborghini spécialisée dans la production de voitures sportives de prestige.\n\nEn 1971, la société de construction de matériel agricole Trattori Lamborghini est vendue au groupe Same Deutz-Fahr Group, Lamborghini se consacrant alors uniquement à la conception d'automobiles. \nDe nombreuses entreprises vont acquérir la firme italienne jusqu'en 1998, date à laquelle Lamborghini est repris par l'Allemand Audi (groupe Volkswagen), le propriétaire actuel.")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.vertical)
                                .padding(.horizontal, 5)
                    } else if isShowingFerruccio {
                            Text("Ferruccio Lamborghini, né le 28 avril 1916 à Renazzo de Cento, et mort le 20 février 1993 à Pérouse, est un industriel italien, fondateur en 1963 de la marque de voitures de sport et de compétition Lamborghini. \n\nÀ la fin de la guerre, fort de son expérience acquise en mécanique, il ouvre un petit garage dans sa ville natale de Renazzo de Cento et achète des véhicules militaires réformés à l'abandon pour les transformer en tracteurs agricoles, secteur alors en plein développement, et fait fortune en moins de dix ans en fondant la société Lamborghini Trattori (« Tracteurs Lamborghini »). Il devient le troisième industriel fabricant de tracteurs en Italie derrière Fiat et Ferguson.\n\nAlors que ses Ferrari connaissent des problèmes récurrents d'embrayage, il n'hésite pas lors d'un rendez-vous à critiquer amèrement son illustre voisin de Maranello, Enzo Ferrari, lequel le méprise alors ouvertement et souverainement : « Lamborghini, vous êtes peut-être capable de conduire un tracteur, mais vous ne saurez jamais conduire une Ferrari convenablement. » Piqué au vif, Ferruccio Lamborghini décide alors de défier Ferrari en construisant sa propre voiture de Grand Tourisme à moteur V12. Enzo Ferrari ne lui adressera plus jamais la parole.\nLe 1er juillet 1963, il fonde « l’Automobili Ferruccio Lamborghini » à Sant’Agata dans la banlieue de Modène et installe ce qui constitue alors l'une des usines les plus modernes d'Europe.")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.vertical)
                                .padding(.horizontal, 5)
                    }
                    
                    VStack(alignment: .center, spacing: 5) {
                        HStack {
                            Text("Les modèles actuels")
                                .fontWeight(.semibold)
                            
                            Image(systemName: "car")
                        }//: HSTACK
                        .foregroundColor(Color("ColorYellow"))
                        .font(.title)
                        
                        LamboGridView()
                    }//: VSTACK
                }//: VSTACk
                .background(
                    Image("background")
                        .resizable()
                        .clipShape(CustomShape())
                        .padding(.top, -70)
                        .padding(.bottom, -30)
                )
    
                Spacer()
        }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(lamborghini: lamborghiniData[0])
    }
}
