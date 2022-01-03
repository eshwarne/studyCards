//
//  CreateQuestionButtonView.swift
//  StudyCards
//
//  Created by Eshwar S on 03/01/22.
//

import SwiftUI

struct CreateQuestionButtonView: View {
    var actionToPerform:()->Void
    var body: some View {
        Button(action:actionToPerform){
            Image(systemName: "plus.rectangle.fill.on.rectangle.fill")
            Text("Add question")
                .bold()
        }
        
        .padding()
        .tint(Color(0xFF7315))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(0x3A3535)))
        .clipped()
    }
}

struct CreateQuestionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CreateQuestionButtonView(actionToPerform: {})
    }
}
