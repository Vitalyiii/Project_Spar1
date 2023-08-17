//
//  Model.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import Foundation

struct Model: Identifiable {
    
    let id = UUID().uuidString
    
    let title: String
    let price: String
    let imageName: String
    
    static let BannerLong = [
        Model(title: "", price: "", imageName: "SparOnline"),
        Model(title: "", price: "", imageName: "SuperWeek"),
       
        
    ]
    
}
