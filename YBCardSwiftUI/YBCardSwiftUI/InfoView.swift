//
//  InfoView.swift
//  YBCardSwiftUI
//
//  Created by Yani Buchkov on 10.02.21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(height: 50, alignment: .center)
            .foregroundColor(Color.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .bold()
                        .font(Font.system(size: 15.0, weight: .light, design: .default))
                }
            )
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
