//
//  Card.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import SwiftUI

struct MiniCard: View {
    
    var item: MiniModel
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
        .frame(width: 150, height: 150)
        .cornerRadius(20)
        
    }
}

struct MiniCard_Previews: PreviewProvider {
    static var previews: some View {
        MiniCard(item: MiniModel(title: "", price: "", imageName: "abonement"))
    
    }
}
