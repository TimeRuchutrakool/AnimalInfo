//
//  CenterModifier.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/24/23.
//

import SwiftUI

struct CenterModifier: ViewModifier{
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}

