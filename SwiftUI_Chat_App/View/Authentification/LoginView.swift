//
//  LoginView.swift
//  SwiftUI_Chat_App
//
//  Created by Eldar Gaiypov on 21/12/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack { Spacer() }
                
                Text("Hello.")
                    .font(.largeTitle)
                    .bold()
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                
                Spacer()
            }
            .padding(.leading)
        }
        .padding(.top, -56)
    }
}

#Preview {
    LoginView()
}
