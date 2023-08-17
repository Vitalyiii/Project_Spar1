//
//  Card.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import SwiftUI

struct Card: View {
    
    var item: Model
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
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
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
        .frame(width: 300, height: 230)
        .cornerRadius(20)
        .frame(width: 280, height: 200)
    }
        
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(item: Model(title: "", price: "", imageName: "SparOnline"))
        
    
    }
}
