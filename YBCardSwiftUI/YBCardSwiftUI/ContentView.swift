//
//  ContentView.swift
//  YBCardSwiftUI
//
//  Created by Yani Buchkov on 10.02.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("myself")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                    )
                Text("Yani Buchkov Jr.")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .foregroundColor(.white)
                    .bold()
                HStack {
                    Image("os_icon")
                        .resizable()
                        .frame(width: 30.0, height: 30.0)
                    Text("iOS Developer")
                        .foregroundColor(.white)
                        .font(Font.system(size: 20.0, weight: .semibold, design: .rounded))
                    
                }
               Divider()
                
                InfoView(text: "+359 896 8030 89", imageName: "phone.fill")
                InfoView(text: "ybuchkov@gmail.com", imageName: "envelope.fill")
                
            }
        }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

