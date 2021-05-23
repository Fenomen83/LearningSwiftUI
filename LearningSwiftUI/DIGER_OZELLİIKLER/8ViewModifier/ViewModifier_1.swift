//
//  ViewModifier_1.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/3/21.
//

import SwiftUI

struct ViewModifier_1: View {
    var body: some View {
        ZStack{
            Color.gray.opacity(0.4).edgesIgnoringSafeArea(.all)
            VStack{
                Text("ViewModifier Örnek - 1").font(.largeTitle)
                Text("Giriş").font(.title).foregroundColor(.gray)
                    .padding(.bottom)
                
                VStack(spacing: 40){
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "lightbulb.fill")
                    }).frame(width: 100, height: 100)
                    .modifier(LightButton())
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "lightbulb")
                    }).frame(width: 100, height: 100)
                    .modifier(LightButton())
                    
                    Button(action:{
                      
                    }) {
                        VStack{
                            Text("Giriş Yap").bold()
                        }
                        .frame(width: 250, height: 55.0)
                        .modifier(CircleButton())
                    }
                    
                    Button(action:{
                      
                    }) {
                        VStack{
                            Text("Kayıt Ol").bold()
                        }
                        .frame(width: 250, height: 55.0)
                        .modifier(CircleStrokeButton())
                    }
                }
                
            }
        }
    }
}

struct LightButton: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.black).shadow(color: Color.gray, radius:3, x:-6, y:6).shadow(color: Color.gray, radius:3, x:6, y:6))
            
    }
}


struct CircleButton: ViewModifier {
    
    var foregroundColor : Color = Color.blue
    var customFont : Font = Font.custom("Avenir Next", size: 16)
    
    func body(content: Content) -> some View {
        content
            .font(customFont)
            .foregroundColor(.white)
            .background(Capsule().foregroundColor(foregroundColor))
            .shadow(color: Color.gray, radius:3, x:2, y:4)
    }
}

struct CircleStrokeButton: ViewModifier {
    
    var foregroundColor : Color = Color.blue
    var backgroundColor : Color = Color.clear
    var customFont : Font = Font.custom("Avenir Next", size: 16)
    
    func body(content: Content) -> some View {
        content
            .font(customFont)
            .foregroundColor(foregroundColor)
            .background(Capsule().fill(backgroundColor))
            .overlay(Capsule().stroke(foregroundColor, lineWidth: 1))
            .shadow(color: Color.gray, radius:3, x:2, y:4)
    }
}

struct ViewModifier_1_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifier_1()
    }
}
