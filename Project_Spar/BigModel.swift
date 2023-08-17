//
//  Model.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import Foundation

struct BigModel: Identifiable {
    
    let id = UUID().uuidString
    
    let title: String
    let price: String
    let imageName: String
    
    static let BannerBig = [
        BigModel(title: "", price: "", imageName: "arbuz"),
        

        ]
}
