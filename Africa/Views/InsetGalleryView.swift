//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/23/23.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: AnimalModel
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery,id: \.self){ item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
                
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animal: [AnimalModel] = Bundle.main.decode("Data/animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animal[2]).previewLayout(.sizeThatFits)
    }
}
