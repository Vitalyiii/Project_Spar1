//
//  Model.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import Foundation

struct MiniModel: Identifiable {
    
    let id = UUID().uuidString
    
    let title: String
    let price: String
    let imageName: String
    
    static let BannerMini = [
        MiniModel(title: "", price: "", imageName: "abonement"),
        MiniModel(title: "", price: "", imageName: "Sale"),
        MiniModel(title: "", price: "", imageName: "one"),
        MiniModel(title: "", price: "", imageName: "wine"),
        MiniModel(title: "", price: "", imageName: "FreeCard"),
        MiniModel(title: "", price: "", imageName: "list"),

        ]
}
