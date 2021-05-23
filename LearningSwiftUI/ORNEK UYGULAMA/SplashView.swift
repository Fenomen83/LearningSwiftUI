//
//  SplashView.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/2/21.
//

import SwiftUI

struct SplashView: View {
    
    @State var openOnboardingView: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Color("AppBackgroundColor").edgesIgnoringSafeArea(.all)
                
                Image("logo1")
                    .resizable()
                    .scaledToFit()
                    .padding(16)
                
                NavigationLink(destination: OnBoardingView(), isActive: self.$openOnboardingView, label: { EmptyView() })
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    self.openOnboardingView = true
                }
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
