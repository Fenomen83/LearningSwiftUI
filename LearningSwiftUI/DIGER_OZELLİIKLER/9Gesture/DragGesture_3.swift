//
//  DragGesture_3.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI

struct DragGesture_3: View {
    @State private var daireninKonumu = CGPoint(x: 100, y: 100)
    @State private var lblDaire = "100,100"
    
    init() {
        
    }
    
    var body: some View {
        VStack{
            Text("Drag Gesture Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
                .padding(.bottom, 40)
            
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue)
                .cornerRadius(40)
                .overlay(Text(lblDaire).bold())
                .position(daireninKonumu)
                .gesture(DragGesture().onChanged({deger in
                    self.daireninKonumu = deger.location
                    self.lblDaire = "\(Int(deger.location.x)),\(Int(deger.location.y))"
                }))

        }.onAppear{
            
        }.onDisappear{
            
        }
    }
}

struct DragGesture_3_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_3()
    }
}
