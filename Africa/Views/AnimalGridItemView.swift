//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/24/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: AnimalModel
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animal: [AnimalModel] = Bundle.main.decode("Data/animals.json")
    static var previews: some View {
        AnimalGridItemView(animal: animal[6]).previewLayout(.sizeThatFits)
            .padding()
    }
}
