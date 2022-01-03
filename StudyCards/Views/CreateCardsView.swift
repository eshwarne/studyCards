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
        NavigationView {
            ZStack{
                Color(0xF4F4F4)
                    .ignoresSafeArea(.all)
                VStack(alignment:.leading,spacing:20){
                    VStack(spacing:25){
                        Group{
                            TextField("Topic name", text:$cardDetails.topicName)
                            Divider()
                            ColorPicker("Topic card color", selection: $topicLabelColor)
                        }
                        
                        Divider()
                        HStack{
                            CreateQuestionButtonView{
                                showingQuestionModal.toggle()
                            }
                        }
                        .sheet(isPresented:$showingQuestionModal){
                            NewCardModalView()
                        }
                        Group{
                            VStack(alignment:.leading){
                                Text("Frequency")
                                HStack{
                                    Text("0")
                                    Slider(value:$frequencyValue,in:(0...1))
                                        .tint(Color(0xFF7315))
                                    Text("1")
                                }
                            }
                            VStack(){
                                Text("How frequently do you want to see the incorrectly answered cards")
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
                .padding(.top, 40)
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack {
                                Text("Create Cards").font(.headline)
                            }
                        }
                    }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CreateCardsView_Previews: PreviewProvider {
    static var previews: some View {
        CreateCardsView()
            .previewInterfaceOrientation(.portrait)
    }
}