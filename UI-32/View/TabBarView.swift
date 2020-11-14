//
//  TabBarView.swift
//  UI-32
//
//  Created by にゃんにゃん丸 on 2020/11/14.
//

import SwiftUI

struct TabBarView: View {
    
    @State var currenttab = "house"
    
    @State var safearea = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var color1 = Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
    @State var color2 = Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    
    @Namespace var animation
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
     
    var body: some View {
       
        ZStack{
            
            
            
            TabView(selection:$currenttab){
                
                Home(animation:animation)
                    .tag(tabs[0])
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.ignoresSafeArea())
                
                
                Text("book")
                    .tag(tabs[1])
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.ignoresSafeArea())
                
                
                
                Text("heart")
                    .tag(tabs[2])
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.ignoresSafeArea())
                
                
                
                Text("person")
                    .tag(tabs[3])
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.ignoresSafeArea())
                
                
                
                
                
                
                
            }
        }
        
        HStack(spacing:35){
            
            ForEach(tabs,id:\.self){image in
                
                Tabbutton(image: image, selected: $currenttab, animation: animation)
                
                //if image != tabs.last{Spacer(minLength: 0)}
                
                
            }
            
            
            
        }
        .padding(.horizontal,35)
        .padding(.top)
        .padding(.bottom,safearea?.bottom != 0 ? safearea?.bottom:15)
        .background(
            LinearGradient(gradient: Gradient(colors: [color1,color2]), startPoint: .top, endPoint: .bottom)
                .clipShape(CousttomShape())
            
    
        )
        
    }
}

var tabs = ["house","book","suit.heart.fill","person"]

