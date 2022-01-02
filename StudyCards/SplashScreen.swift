//
//  ContentView.swift
//  StudyCards
//
//  Created by Eshwar S on 02/01/22.
//

import SwiftUI


struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color(0xF4F4F4)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:40){
                Text("Study Cards")
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width:101,height:147)
                        .foregroundColor(Color(0x3A3535))
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width:101,height:147)
                        .foregroundColor(Color(0xFF7315))
                        .offset(CGSize(width: -10, height: 10))
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width:101,height:147)
                        .foregroundColor(Color(0x232020))
                        .offset(CGSize(width: -20, height: 20))
                }.offset(CGSize(width: 0, height: -20))
                
                Text("Create, Share and Study cards")
                    .font(.system(size: 12))
                    .tracking(3)
                    .bold()
            
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
