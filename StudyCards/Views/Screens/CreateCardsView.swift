//
//  CreateCardsView.swift
//  StudyCards
//
//  Created by Eshwar S on 03/01/22.
//

import SwiftUI
class CardDetails: ObservableObject {
    @Published var topicName: String = ""
}
struct CreateCardsView: View {
    @StateObject private var cardDetails = CardDetails()
    @State private var topicLabelColor: Color = Color(0xFF7315)
    @State private var frequencyValue: Double = 0.5
    @State private var showingQuestionModal = false
    var body: some View {
            ZStack{
                Color("background")
                    .ignoresSafeArea(.all)
                
                VStack(alignment:.leading,spacing:20){
                    Spacer()
                    VStack(spacing:25){
                        Group{
                            TextFieldVariant(text: $cardDetails.topicName, placeholderText: "Topic Name",
                                             textColor:Color(.black),
                                             placeholderColor:Color(.gray),
                                             padding: 0
                                              )
                            Divider()
                            ColorPicker("Topic card color", selection: $topicLabelColor)
                                .foregroundColor(Color(.gray))
                        }
                        
                        Divider()
                        HStack{
                            CreateQuestionButtonView{
                                showingQuestionModal.toggle()
                            }
                        }
                        .sheet(isPresented:$showingQuestionModal){
                            NewQuestionModalView()
                        }
                        Group{
                            VStack(alignment:.leading){
                                Text("Frequency")
                                    .foregroundColor(Color(.black))
                                HStack{
                                    Text("0")
                                    Slider(value:$frequencyValue,in:(0...1))
                                        .tint(Color(0xFF7315))
                                    Text("1")
                                }
                            }
                            VStack(){
                                Text("How frequently do you want to see the incorrectly answered cards")
                                    .foregroundColor(Color(.black))
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth:.infinity,  alignment: .center)
                                    .opacity(0.7)
                                    .font(.system(size: 10))
                                
                            }
                            Divider()
                            
                        }
                        
                    }
                    .padding(.top,30)
                    .padding()
                    .background(.white)
                    .cornerRadius(25)
                    .clipped()
                    .shadow(radius: 6)
                    Spacer()
                }
                .ignoresSafeArea(.all)
                .padding(.top, 40)
                .padding()
                VStack{
                    Text("Create cards").font(.largeTitle)
                    Spacer()
                }
            
                
            }
        
    }
}

struct CreateCardsView_Previews: PreviewProvider {
    static var previews: some View {
        CreateCardsView()
            .previewInterfaceOrientation(.portrait)
    }
}
