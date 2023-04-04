//
//  InsetFactView.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/23/23.
//

import SwiftUI

struct InsetFactView: View {
    let animal: AnimalModel
    var body: some View {
        GroupBox{
            TabView {
                ForEach(animal.fact,id: \.self) { item in
                    Text(item)
                        .multilineTextAlignment(.center)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight:  168, maxHeight: 180)
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animal: [AnimalModel] = Bundle.main.decode("Data/animals.json")
    static var previews: some View {
        InsetFactView(animal: animal[3]).previewLayout(.sizeThatFits)
    }
}
