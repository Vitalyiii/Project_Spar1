//
//  Card.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 16.08.2023.
//

import SwiftUI

struct BigCard: View {
    
    var item: BigModel
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
        .frame(width: 200, height: 200)
        .cornerRadius(10)
        
    }
}

struct BigCard_Previews: PreviewProvider {
    static var previews: some View {
        BigCard(item: BigModel(title: "", price: "", imageName: "arbuz"))
    
    }
}
