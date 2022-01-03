//
//  Cards.swift
//  StudyCards
//
//  Created by Eshwar S on 03/01/22.
//

import Foundation
import SwiftUI
struct QuestionWithAnswer{
    var question: String;
    var answer: String;
}
struct CardsModel: Identifiable {
    var id = UUID()
    var topicName: String;
    var frequency: Double? = 0.5;
    var image:Image?;
    var questionsWithAnswers: [QuestionWithAnswer];
}

var golangCards = CardsModel(topicName: "Golang", frequency: 0.5, questionsWithAnswers: [
    .init(question: "How is a Go Routine triggered in Golang", answer: "Using GO keyword"),
    .init(question: "What are the methods that should be implemented to use a Heap", answer: "Swap, Less, Len, Push, Pop"),
    .init(question: "How do you declare a variable in Golang", answer: "var variable_name type"),
    .init(question: "Unicode points in Golang is called as", answer: "Runes"),
    .init(question: "Runes with the accent and the base letter is split, this is called", answer: "Decomposition"),
    .init(question: "How do you say Go that something is a function", answer: "Use func keyword"),
    .init(question: "In go, functions are first class citizens. True/False", answer: "TRUE")
])
var javascriptCards = CardsModel(topicName: "Javascript", frequency: 0.7, questionsWithAnswers: [
    .init(question: "A function encloses its surrounding context, what is this called", answer: "Closure"),
    .init(question: "The THIS keyword is also wrapped by the function closure. TRUE/FALSE", answer: "FALSE, functions does not close over this keyword"),
    .init(question: "Typescript to Javscript process is done by Webpack. TRUE/FALSE", answer: "FALSE, typescript to javascript is done by the typescript tools"),
])

var swiftCards = CardsModel(topicName: "Swift", frequency: 0.3, questionsWithAnswers: [
    .init(question: "Weak references in swift is implemented by weak keyword. TRUE/FALSE", answer: "TRUE"),
    .init(question: "If an object is only referred to by a weak reference, then it is garbage collected. TRUE/FALSE", answer: "TRUE"),
])
