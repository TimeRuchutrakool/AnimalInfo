//
//  CreditView.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/24/23.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128)
            Text("""
      Copyright © Robert Petras
      All right reserved
      Better Apps ♡ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
        
}



struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView().previewLayout(.sizeThatFits)
            .padding()
    }
}
