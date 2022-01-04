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
        .foregroundColor(.white)
        .background(Color("primary"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.white)))
        .shadow(radius: 8)
  
    }
}

struct CreateQuestionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CreateQuestionButtonView(actionToPerform: {})
    }
}
