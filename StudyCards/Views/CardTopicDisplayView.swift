//
//  CardTopicDisplayView.swift
//  StudyCards
//
//  Created by Eshwar S on 03/01/22.
//

import SwiftUI

struct CardTopicDisplayView: View {
    var card:CardsModel
    var body: some View {
        VStack(){
            Text(card.topicName)
                .font(.headline)
                .foregroundColor(.white)
                .frame(minWidth:100 , minHeight: 100, alignment: .bottomTrailing)
                .padding()
                .background(
                    card.cardLinearGradient
                )
                .cornerRadius(25)
                .shadow(radius: 10)
        }
    }
}

struct CardTopicDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        CardTopicDisplayView(card:javascriptCards)
    }
}
