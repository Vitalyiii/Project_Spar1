//
//  Card.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import SwiftUI

struct Stories: View {
    
    var item: StoriesFile
    @State private var isTaped = false
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text(item.title)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.accentColor)
            
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Text(item.price)
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Image(systemName: isTaped ? "" : "")
                    .onTapGesture {
                        isTaped = true
                    }
                 
                    
            }
        }
        .padding()
        .background(Color.white)
        .frame(width: 120, height: 120)
        .clipped()
        .scaledToFill()

    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories(item: StoriesFile(title: "", price: "Привелегии «Мой SPAR»", imageName: "greenSPAR"))
    
    }
}
