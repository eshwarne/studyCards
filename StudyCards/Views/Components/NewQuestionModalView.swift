//
//  NewQuestionModalView.swift
//  StudyCards
//
//  Created by Eshwar S on 03/01/22.
//

import SwiftUI
struct TextFieldVariant:View{
    @Binding var text:String;
    var placeholderText: String;
    var textColor: Color = .white
    var placeholderColor: Color = .white
    var padding:CGFloat=20
    var body: some View{
        ZStack{
            if text.isEmpty {
                Text(placeholderText)
                    .foregroundColor(placeholderColor)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(padding)
            }
            TextField("", text: $text)
                .padding(padding)
                .foregroundColor(textColor)
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.white)
                )
            
        }
        
    }
}
struct NewQuestionModalView: View {
    @Environment(\.dismiss) var dismiss;
    @State var questionContent: String = "";
    @State var answerContent: String = "";
    var body: some View {
        VStack{
            Text("CREATE YOUR QUESTION")
                .font(.system(size: 25))
                .fontWeight(.bold)
            ZStack{
                Color("primary")
                VStack(spacing:30){
                    
                    TextFieldVariant(text: $questionContent, placeholderText: "Question")
                    TextFieldVariant(text: $answerContent, placeholderText: "Answer")
                    
                    
                    Button(action:{
                        dismiss()
                    }){
                        Text("CREATE")
                            .bold()
                            .frame(width: 100, height: 50)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                        
                        
                    }.tint(.white)
                }
                .padding()
            }.frame(width: 300, height: 400, alignment: .center)
                .cornerRadius(25)
                .padding()
                .shadow(radius: 10)
        }
        
        
    }
}

struct NewQuestionModalView_Previews: PreviewProvider {
    static var previews: some View {
        NewQuestionModalView()
    }
}
