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
            NavigationLink(destination:CreateCardsView(), tag: "CREATE_CARDS", selection: $nextScreen){
                EmptyView()
            }
            NavigationLink(destination: ViewCardsView(),  tag: "VIEW_CARDS", selection: $nextScreen){
                EmptyView()
            }
            
            Color("background")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment:.center, spacing: 40){
                Text("What are you upto today?").font(.title)
                HStack(spacing:40){
                    Button(action:{
                        self.nextScreen = "VIEW_CARDS"
                    }){
                        Text("VIEW CARDS")
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(Color("textSecondary"))
                            .frame(width: 100, height: 100, alignment: .center)
                            .background(Color("primary"))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        
                    }
                    
                    Button(action:{
                        self.nextScreen = "CREATE_CARDS"
                    }){
                        Text("CREATE CARDS")
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(Color("textSecondary"))
                            .frame(width: 100, height: 100, alignment: .center)
                            .background(Color("secondary"))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        
                        
                    }
                    
                }
                
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
