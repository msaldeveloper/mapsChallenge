//
//  LoginView.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import SwiftUI

struct LoginView: View {
    @State private var emailReciver = ""
    @State private var passwordReciver = ""
    @State var isAuthenticated = false
    @State var isAuthenticatedWrong = false
    var loginViewModel = LoginViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                
                VStack{
                    Section{
                        Image("mapsLogo").resizable().scaledToFit().frame(width: 100)
                    }.padding(EdgeInsets(top: 20, leading: 0, bottom: 50, trailing: 0))
                    Section {
                        Text("Email")
                            .font(.title2)
                            .foregroundStyle(Color.black)
                            

                        ZStack(alignment: .leading) {
                            TextField("", text: $emailReciver, prompt: Text("email@example_com").foregroundColor(.gray))
                                .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 18))
                                .foregroundStyle(Color.black)
                                .background(Color.white)
                                .textInputAutocapitalization(.never)
                                .keyboardType(.emailAddress)
                                .textContentType(.emailAddress)
                                .overlay(Rectangle()
                                    .stroke(Color.blue))
                        }
                    }.padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                    Section {
                        Text("Contraseña")
                            .font(.title2)
                            .foregroundStyle(Color.black)
                            .padding(.top)
                            

                        ZStack(alignment: .leading) {
                            SecureField("", text: $passwordReciver).foregroundColor(.gray)
                                .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 18))
                                .foregroundStyle(Color.black)
                                .background(Color.white)
                                .textInputAutocapitalization(.never)
                                .keyboardType(.emailAddress)
                                .textContentType(.emailAddress)
                                .overlay(Rectangle()
                                    .stroke(Color.blue))
                        }
                    }.padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                    
                    Button(action: {
                        if loginViewModel.validateCredentials(emailReciver, passwordReciver) {
                            isAuthenticated = true
                        }else {
                            isAuthenticatedWrong = true
                        }

                        
                    }, label: {
                        Text("Acceder")
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    }).padding()
                        .buttonStyle(.borderedProminent)
                        .alert("Contraseña Incorrecta", isPresented: $isAuthenticatedWrong) {
                                    Button("Reintentar", role: .cancel) { }
                                }
                        .navigationDestination(
                            isPresented: $isAuthenticated) {
                                VStack{
                                    MenuView()
                                }
                            }
                    
                }
            }
        }
        
        
    }
}

#Preview {
    LoginView()
}
