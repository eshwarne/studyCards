//
//  StudyCardsApp.swift
//  StudyCards
//
//  Created by Eshwar S on 02/01/22.
//

import SwiftUI

@main
struct StudyCardsApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
    }
}
extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}
