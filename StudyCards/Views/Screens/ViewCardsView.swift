//
//  ViewCardsView.swift
//  StudyCards
//
//  Created by Eshwar S on 03/01/22.
//

import SwiftUI

struct ViewCardsView: View {
    private var cardGroups:[CardsModel] = [
        javascriptCards,
        golangCards,
        swiftCards
    ]
    private var gridColumnConfig = [
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150))
    ]
    @State private var cardStackViewIsActive = false
    @State private var currentCardGGoupIndex: Int = 0
    var body: some View {
        NavigationView{
            ZStack{
                NavigationLink(destination:CardsStackView(cardGroup: cardGroups[currentCardGGoupIndex]),
                isActive: $cardStackViewIsActive){
                    EmptyView()
                }
                Color("background")
                VStack(alignment:.leading){
                    Text("Your card groups")
                        .font(.largeTitle)
                        .padding()
                        .padding(.top, 30)
                    ScrollView{
                        LazyVGrid(columns: gridColumnConfig, spacing: 40){
                            ForEach((0..<cardGroups.count)){
                                cardIndex in
                                CardTopicDisplayView(card:cardGroups[cardIndex])
                                    .padding()
                                    .onTapGesture {
                                        self.currentCardGGoupIndex = cardIndex
                                        self.cardStackViewIsActive = true
                                    }
                            }
                        }
                    }
                    Spacer()
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        
        
    }
}

struct ViewCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ViewCardsView()
    }
}
