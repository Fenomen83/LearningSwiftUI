//
//  OnBoardingView.swift
//  LearningSwiftUI
//
//  Created by Metin HALILOGLU on 5/4/21.
//

import SwiftUI

struct SliderModel : Identifiable {
    var id : Int
    var title : String
    var description : String
    var imageName : String
}

struct OnBoardingView: View {
    
    @State var openPokemonListView: Bool = false
    @State var sliderIndex = 0
    
    let sliders = [
        SliderModel(id: 0, title: "OnBoardingView1.SliderTitle", description: "OnBoardingView1.SliderDescription", imageName: "WelcomeSlider"),
        SliderModel(id: 1, title: "OnBoardingView1.Slider1Title", description: "OnBoardingView1.Slider1Description", imageName: "WelcomeSlider1"),
        SliderModel(id: 2, title: "OnBoardingView1.Slider2Title", description: "OnBoardingView1.Slider2Description", imageName: "WelcomeSlider2"),
        SliderModel(id: 3, title: "OnBoardingView1.Slider3Title", description: "OnBoardingView1.Slider3Description", imageName: "WelcomeSlider3"),
        SliderModel(id: 4, title: "OnBoardingView1.Slider4Title", description: "OnBoardingView1.Slider4Description", imageName: "WelcomeSlider4")
    ]
    
    var body: some View {
        
        ZStack{
            Color("AppBackgroundColor").edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                
                TabView(selection: self.$sliderIndex){
                    
                    ForEach(self.sliders, id: \.id) { slider in
                        VStack{

                            LottieView(name: "\(slider.imageName)", loopMode: .loop)
                                .frame(width: UIScreen.main.bounds.width - 100, height: 500)
                                .padding(.horizontal)
 

                            Group {
                                Text(slider.title)
                                    .font(Font.custom("Avenir Next", size: 18))
                                    .padding(.all)
                                Text(slider.description)
                                    .font(Font.custom("Avenir Next", size: 11))
                            }
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: UIScreen.main.bounds.width - 60.0)
                            
                            Spacer()
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .overlay( DotsIndexView(numberOfPages: self.sliders.count, currentIndex: self.sliderIndex),alignment: .bottom)
                    
                Spacer()
                
                VStack{
                    Button(action: {
                        self.openPokemonListView = true
                    }) {
                        Text("Devam Et")
                            .frame(width: UIScreen.main.bounds.width - 100, height: 55.0)
                            .modifier(CircleButton())
                    }
                }.padding(.top)
                
                Spacer()
            }
            
            NavigationLink(destination: PokemonListView(), isActive: self.$openPokemonListView, label: { EmptyView() })
                
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
