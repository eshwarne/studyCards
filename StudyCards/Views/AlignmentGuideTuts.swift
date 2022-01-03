//
//  AlignmentGuideTuts.swift
//  StudyCards
//
//  Created by Eshwar S on 03/01/22.
//

import SwiftUI

struct AlignmentGuideTuts: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .alignmentGuide(HorizontalAlignment.center){ d in
                    return d[HorizontalAlignment.center]
                }
            Text("HELLO ")
            Text("BYE")
                .alignmentGuide(HorizontalAlignment.center) {
                    d in
                    return d[.trailing]
                }
        }
        
    }
}

struct AlignmentGuideTuts_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideTuts()
    }
}
