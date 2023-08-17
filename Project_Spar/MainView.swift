//
//  MainView.swift
//  Project_Spar
//
//  Created by Vitaly Iskanderov on 14.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                header()
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(StoriesFile.StoriesOne) { item in
                            Stories(item: item)
                        }
                    }
                    .padding(.leading)
                    
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Model.BannerLong) { item in
                            Card(item: item)
                        }
                    }
                    .padding(.leading)
                    
                }
                // Text("Chair")
                //     .font(.system(.title, design: .rounded))
                //      .fontWeight(.bold)
                //       .foregroundColor(.accentColor)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(MiniModel.BannerMini) { item in
                            MiniCard(item: item)
                        }
                    }
                    
                }
                
                Text("Рекомендуем")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.accentColor)
                    
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(BigModel.BannerBig) { item in
                            BigCard(item: item)
                        }
                    }
                    .padding(.leading)
                    
                }
            
                .background(Color("background"))
            
            }
        }
    }
    
    @ViewBuilder
    private func header() -> some View {
        
        VStack(spacing: 18) {
            
            HStack {
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search...", text: $text)
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
            
                
                Button {
                    print("filter")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                        
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .padding()
        }
        
        
    }
    
  

    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()

        }
    }
    
}
