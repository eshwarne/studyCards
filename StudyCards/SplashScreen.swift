//
//  ContentView.swift
//  StudyCards
//
//  Created by Eshwar S on 02/01/22.
//

import SwiftUI


struct SplashScreen: View {
    @State var isHomePageActive: Bool = false
    @State var rotationValue: CGFloat = 0
    var body: some View {
        NavigationView {
            ZStack{
                NavigationLink(destination:HomePageView(), isActive: $isHomePageActive){
                        EmptyView()
                }
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing:50){
                    Text("Study Cards")
                        .font(.system(size: 45))
                        .foregroundColor(Color("text"))
                        .fontWeight(.bold)
                        
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:101,height:147)
                            .foregroundColor(Color("secondary"))
                            .rotationEffect(.degrees(rotationValue), anchor: .bottomLeading)
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:101,height:147)
                            .foregroundColor(Color("primary"))
                            .offset(CGSize(width: -10, height: 10))
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:101,height:147)
                            .foregroundColor(Color(0x232020))
                            .offset(CGSize(width: -20, height: 20))
                            .rotationEffect(.degrees(-rotationValue), anchor: .bottomTrailing)
                    }.offset(CGSize(width: 0, height: -20))
                    
                    Text("Create, Share and Study cards")
                        .foregroundColor(Color("text"))
                        .font(.system(size: 12))
                        .tracking(3)
                        .bold()
                
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
                withAnimation {
                    self.rotationValue = 10
                }
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+1.3) {
                withAnimation {
                    self.rotationValue = 0
                }
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+1.5){
                self.isHomePageActive = true
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
