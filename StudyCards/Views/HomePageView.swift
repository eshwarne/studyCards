//
//  SwiftUIView.swift
//  StudyCards
//
//  Created by Eshwar S on 02/01/22.
//

import SwiftUI

struct HomePageView: View {
    @State private var nextScreen: String?
    var body: some View {
        ZStack{
            NavigationLink("create_cards", destination:CreateCardsView(), tag: "CREATE_CARDS", selection: $nextScreen)
            Color(0xF4F4F4)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment:.center, spacing: 40){
                Text("What are you upto today?")
                HStack{
                    Button(action:{}){
                        Text("VIEW CARDS")
                            .fontWeight(.bold)
                            .padding()
                        
                            .foregroundColor(Color(0xF4F4F4))
                            .frame(width: 100, height: 100, alignment: .center)
                            .background(Color(0xFF7315))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                    
                    Button(action:{
                        self.nextScreen = "CREATE_CARDS"
                    }){
                        Text("CREATE CARDS")
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(Color(0xF4F4F4))
                            .frame(width: 100, height: 100, alignment: .center)
                            .background(Color(0x3A3535))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        
                    }
                    
                }
                
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
