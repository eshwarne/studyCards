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
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    var body: some View {
        NavigationView{
            ZStack{
                Color(.white)
                ScrollView{
                    LazyVGrid(columns: gridColumnConfig){
                        ForEach(cardGroups){
                            card in
                            Text(card.topicName)
                        }
                    }
                }
            }
            .navigationBarTitle("Your cards")
        }
    }
}

struct ViewCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ViewCardsView()
    }
}
