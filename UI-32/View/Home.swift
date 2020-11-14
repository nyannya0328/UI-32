//
//  Home.swift
//  UI-32
//
//  Created by にゃんにゃん丸 on 2020/11/14.
//

import SwiftUI

struct Home: View {
    
    var animation : Namespace.ID
    
    @State var white = Color.white.opacity(0.3)
    
    func Header(title:String) -> HStack<TupleView<(Text, Spacer)>> {
        return HStack{
            
            Text("Special")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            
            Spacer()
            
            
        }
    }
    
    var body: some View {
        VStack{
            
            ZStack{
                
                HStack{
                    
                    
                    Button(action: {}) {
                        
                        Image(systemName: "rectangle.grid.2x2")
                            .font(.title)
                            .foregroundColor(white)
                        
                        
                            
                        
                    }
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .font(.title)
                            .foregroundColor(white)
                    }
                    
                }
                
                Text("Salada")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding([.horizontal,.bottom])
            .padding(.top,10)
            
        
        
        
            ScrollView(.vertical, showsIndicators: false){
                
                VStack{
                    Header(title: "Spacial")
                    .padding()
                    
                    HStack{
                        
                        
                        VStack(alignment:.leading,spacing : 6){
                            
                            
                            Text("Great")
                                .bold()
                                .foregroundColor(.white)
                            
                            HStack{
                                
                                
                                Text("Amazing")
                                    .bold()
                                    .foregroundColor(white)
                                
                                
                                Text("last")
                                    .bold()
                                    .foregroundColor(.white)
                                
                                Text("Fire")
                                    .font(.caption)
                                    .foregroundColor(.blue)
                                
                                
                                
                                
                                
                            }
                            Text("100")
                                .font(.title3)
                                .foregroundColor(white)
                           
                            
                            
                        }
                        Spacer(minLength: 0)
                        
                        Image("p1")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .padding(.trailing)
                        
                        
                        
                        
                    }
                    .padding([.vertical,.trailing])
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.blue,Color.red]), startPoint: .top, endPoint: .bottom)
                        
                            .cornerRadius(25)
                            .padding(.vertical,25)
                            .padding(.trailing,150)
                    )
                        
                }
                .padding(.horizontal)
                
                Header(title: "Header")
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing:10){
                        
                        ForEach(items){item in
                            
                            CardView(item: item)
                            
                            
                            
                        }
                        
                        
                    }
                    
                }
                
                
            }
            
            
            
        }
    }
}

