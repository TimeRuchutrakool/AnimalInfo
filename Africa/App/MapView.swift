//
//  MapView.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/23/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let locations: [LocationModel] = Bundle.main.decode("Data/locations.json")
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        return mapRegion
    }()
    
    var body: some View {
        //Map(coordinateRegion: $region)
        
        Map(coordinateRegion: $region, annotationItems: locations,annotationContent:  { item in
            //Old Style
            //MapPin(coordinate: item.location,tint: .accentColor)
            
            //New Style
            //MapMarker(coordinate: item.location,tint: .accentColor)
            
            //Custom
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32,height: 32,alignment: .center)
//            }
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })
        .overlay (
            HStack(alignment: .center, spacing: 12){
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48,height: 48,alignment: .center)
                
                VStack(alignment: .leading,spacing: 3) {
                    HStack{
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack{
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }
                .padding(.vertical,12)
                .padding(.horizontal,16)
                .background(.ultraThinMaterial)
                .cornerRadius(12)
                .padding()
            ,alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
