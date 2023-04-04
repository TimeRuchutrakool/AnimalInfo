//
//  VideoModel.swift
//  Africa
//
//  Created by Time Ruchutrakool on 3/24/23.
//

import Foundation

struct VideoModel: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String{
        "video-\(id)"
    }
}
