//
//  GeometryReader_5.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct GeometryReader_5: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Geometry Reader Örnek-5").font(.largeTitle)
            
            Text("Min Orta Max").foregroundColor(.gray)
            
            Text("Geometry Reader kullanarak bir alanın minimum, maksimum ve ortasına ait X - Y Koordinat bilgilerini alabilirsiniz").layoutPriority(2)
            
            GeometryReader{ geometry in
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Local Koordinat Bilgisi : ")
                    
                    HStack(spacing: 10){
                        Text("minX : \(Int(geometry.frame(in: .local).minX))")
                        
                        Spacer()
                        Text("OrtaX : \(Int(geometry.frame(in: .local).midX))")
                        Spacer()
                        Text("MaxX : \(Int(geometry.frame(in: .local).maxX))")
                        
                    }
                    
                    HStack(spacing: 10){
                        Text("minX : \(Int(geometry.frame(in: .global).minX))")
                        
                        Spacer()
                        Text("OrtaX : \(Int(geometry.frame(in: .global).midX))")
                        Spacer()
                        Text("MaxX : \(Int(geometry.frame(in: .global).maxX))")
                        
                    }
                    
                    
                }.padding(.horizontal)
                
                
            }.frame(height: 200).foregroundColor(.white).background(Color.pink)
            
            HStack{
                GeometryReader { geometry in
                    
                    
                    VStack(spacing: 10) {
                        Text("minY : \(Int(geometry.frame(in: .global).minY))")
                        
                        Text("ortaY : \(Int(geometry.frame(in: .global).midY))")
                        
                        Text("maskY : \(Int(geometry.frame(in: .global).maxY))")
                        
                    }.padding(.vertical)
                    
                    
                    
                }.foregroundColor(.white).background(Color.pink)
                
                Image("KoordinatBilgileri").resizable().aspectRatio(contentMode: .fit)
                
            }
            
            
            
            }.font(.title).padding()
    }
}

struct GeometryReader_5_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_5()
    }
}
