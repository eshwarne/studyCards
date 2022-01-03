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
    var body: some View {
        NavigationView{
            ZStack{
                Color(.white)
                VStack(alignment:.leading){
                    Text("Your card groups")
                        .font(.largeTitle)
                        .padding()
                    ScrollView{
                        LazyVGrid(columns: gridColumnConfig, spacing: 50){
                            ForEach(cardGroups){
                                card in
                                CardTopicDisplayView(card:card)
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ViewCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ViewCardsView()
    }
}
