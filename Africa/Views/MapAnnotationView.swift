//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/24/23.
//

import SwiftUI


struct MapAnnotationView: View {
    var location: LocationModel
    @State private var animating: Double = 0.0
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54,height: 54,alignment: .center)
            Circle()
                .stroke(Color.accentColor,lineWidth: 2)
                .frame(width: 52,height: 52,alignment: .center)
                .scaleEffect(1 + CGFloat(animating))
                .opacity(1 - animating)
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48,alignment: .center)
            .clipShape(Circle())
        }
        .onAppear(){
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)){
                animating = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static let locations: [LocationModel] = Bundle.main.decode("Data/locations.json")

    static var previews: some View {
        MapAnnotationView(location: locations[0]).previewLayout(.sizeThatFits)
            .padding()
    }
}
