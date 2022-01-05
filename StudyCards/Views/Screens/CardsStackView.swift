//
//  CardStackView.swift
//  StudyCards
//
//  Created by Eshwar S on 05/01/22.
//

import SwiftUI

struct CardsStackView: View {
    @State var currentActiveQuestion = 0;
    var cardGroup : CardsModel;
    var body: some View {
        VStack {
            ZStack{
                ForEach(0..<cardGroup.questionsWithAnswers.count){
                    index in
                    QuestionCardView(questionContent: self.cardGroup.questionsWithAnswers[index].question, answerContent: self.cardGroup.questionsWithAnswers[index].question)
                        .shadow(radius: 10)
                        .offset(y:CGFloat(-index*10))
                   
                }
            }
        }
    }
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardsStackView(cardGroup: javascriptCards)
    }
}
