//
//  CardView.swift
//  UI-32
//
//  Created by にゃんにゃん丸 on 2020/11/14.
//

import SwiftUI

struct CardView: View {
    
    var item : item
    
    @State var white = Color.white.opacity(0.85)
    var body: some View {
        VStack(spacing:15){
            
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .cornerRadius(10)
            
            HStack{
                
                VStack(alignment: .leading, spacing: 10){
                    Text(item.name)
                        .fontWeight(.heavy)
                        .foregroundColor(white)
                    
                    
                    Text(item.cost)
                        .foregroundColor(white)
                    
                
                    
                    
                    
                    
                }
                .padding()
                
                Button(action: {}) {
                    
                    
                    Image(systemName: "plus")
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5)
                    
                }
                
                
            }
            .padding(.horizontal)
            
        }
    }
}


