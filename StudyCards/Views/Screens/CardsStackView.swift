//
//  CardStackView.swift
//  StudyCards
//
//  Created by Eshwar S on 05/01/22.
//

import SwiftUI

struct CardsStackView: View {
    @State var currentActiveQuestion = 0;
    @State var stackRotationAmount = 20.0;
    @State var cardRotationAmount = 0.0;
    var cardGroup : CardsModel;
    @State var questionsCount = 0.0
    var body: some View {
        VStack {
            ZStack{
                Color("background")
                VStack{
                    ZStack{
                        ForEach(0..<cardGroup.questionsWithAnswers.count){
                            index in
                            let currentIndex:Double = Double(index)
                            let count = Double(cardGroup.questionsWithAnswers.count)-1
                            let rot = (currentIndex / count) < 1 ? 0.0 : 1.0;
                            QuestionCardView(questionContent: self.cardGroup.questionsWithAnswers[index].question, answerContent: self.cardGroup.questionsWithAnswers[index].question)
                                .shadow(radius: 10)
                                .offset(y:CGFloat(-index*10))
                                .onTapGesture{
                                    self.cardRotationAmount += (-10)
                                }
                                .rotationEffect(.degrees(rot * (self.cardRotationAmount)), anchor: .bottomLeading)
                            
                            
                            
                            
                        }
                    }
                    .rotation3DEffect(.degrees(stackRotationAmount), axis: (x:1,y:0,z:0)
                    )
                }
                .onAppear{
                    questionsCount = Double(self.cardGroup.questionsWithAnswers.count-1)
                    withAnimation{
                        stackRotationAmount = 0
                    }
                }
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardsStackView(cardGroup: javascriptCards)
    }
}
