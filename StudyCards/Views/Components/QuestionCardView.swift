//
//  QuestionCardView.swift
//  StudyCards
//
//  Created by Eshwar S on 05/01/22.
//

import SwiftUI

struct QuestionCardView: View {
    var questionContent: String
    var answerContent: String
    var screenDimensions = UIScreen.main.bounds
    var body: some View {
        VStack{
            Spacer()
            Text(questionContent)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.title)
            Spacer()
            Text(answerContent)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .font(.headline)
            Spacer()
        }
        .padding(10)
        .frame(width: screenDimensions.width * 0.8, height: screenDimensions.height*0.6, alignment: .center)
        .background(Color("primary"))
        .foregroundColor(.white)
        .cornerRadius(25)
    }
}

struct QuestionCardView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionCardView(questionContent: "Some random question which is large enough to test on the screen, example this is a large question, which can be a lot of words", answerContent: "Some random answer which is large enough to check")
    }
}
