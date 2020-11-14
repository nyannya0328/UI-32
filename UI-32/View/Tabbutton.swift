//
//  Tabbutton.swift
//  UI-32
//
//  Created by にゃんにゃん丸 on 2020/11/14.
//

import SwiftUI

struct Tabbutton: View {
    
    var image : String
    @Binding var selected : String
    var animation : Namespace.ID
    var body: some View {
        Button(action: {
            
            withAnimation(.spring()){selected = image}
            
        }){
            
            VStack{
                Image(systemName: image)
                    .font(.system(size: 25))
                    .foregroundColor(selected == image ? .white : .gray)
                
                ZStack{
                    
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 8, height: 8)
                    
                    if selected == image{
                        
                    Circle()
                        .fill(Color.white)
                        .frame(width: 8, height: 8)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                        
                        
                    }
                    
                    
                    
                }
                
                
            }
            
        }
    }
}

