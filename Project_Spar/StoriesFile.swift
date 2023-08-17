//
//  Model.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import Foundation

struct StoriesFile: Identifiable {
    
    let id = UUID().uuidString
    
    let title: String
    let price: String
    let imageName: String
    
    static let StoriesOne = [
        StoriesFile(title: "", price: "Привелегии «Мой SPAR»", imageName: "greenSPAR"),
        StoriesFile(title: "", price: "Медовой Спас", imageName: "spas"),
        StoriesFile(title: "", price: "Новинки недели", imageName: "week"),
        
    ]
    
}
