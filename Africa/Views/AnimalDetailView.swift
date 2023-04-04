//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/23/23.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: AnimalModel
    var body: some View {
        
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .center) {
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                    
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                        .background(Color.accentColor.frame(height: 6).offset(y:24))
                    
                    Text(animal.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal)
                    
                    Group{
                        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    }.padding(.horizontal)
                    
                    InsetGalleryView(animal: animal)
                    
                    Group{
                        HeadingView(headingImage: "questionmark.circle", headingText: "Did You Know")
                        InsetFactView(animal: animal)
                    }.padding(.horizontal)
                    
                    Group{
                        HeadingView(headingImage: "info.circle", headingText: "All About \(animal.name)")
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                    }.padding(.horizontal)
                    
                    Group{
                        HeadingView(headingImage: "map", headingText: "National Parks")
                        InsetMapView()
                    }
                    
                    Group{
                        HeadingView(headingImage: "books.vertical", headingText: "LearnMore")
                        ExternalWebLinkView(animal: animal)
                    }.padding(.horizontal)
                }
                
            }
        
            .navigationTitle("Learn About \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animal: [AnimalModel] = Bundle.main.decode("Data/animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animal[1])
    }
}
