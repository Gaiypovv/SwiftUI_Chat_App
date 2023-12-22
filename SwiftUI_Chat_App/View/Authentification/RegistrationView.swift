//
//  RegistrationView.swift
//  SwiftUI_Chat_App
//
//  Created by Eldar Gaiypov on 21/12/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack { Spacer() }
                
                Text("Get started.")
                    .font(.largeTitle)
                    .bold()
                
                Text("Create your account.")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                
                VStack(spacing: 40) {
                    CustomTextField(imageName: "envelope", placeholderText: "Email",
                                    isSecureField: false,
                                    text: $email)
                    
                    CustomTextField(imageName: "person", placeholderText: "Email",
                                    isSecureField: false,
                                    text: $username)
                    
                    CustomTextField(imageName: "person", placeholderText: "Email",
                                    isSecureField: false,
                                    text: $fullname)
                    
                    CustomTextField(imageName: "lock", placeholderText: "Password", isSecureField: true,
                                    text: $password)
                    
                }
                .padding([.top, .horizontal], 32)
                
            }
            .padding(.leading)
            
            Button(action: {
                print("Handle sign up...")
            }, label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            })
            .padding(.top, 24)
            .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
            
            Spacer()
            
            Button(action: { mode.wrappedValue.dismiss() }, label: {
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    
                    Text("Sign In")
                        .font(.system(size: 14, weight: .semibold))
                }
            })
            .padding(.bottom, 32)
        }
    }
}

#Preview {
    RegistrationView()
}
