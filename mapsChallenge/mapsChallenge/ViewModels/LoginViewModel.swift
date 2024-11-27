//
//  LoginViewModel.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import Foundation


class LoginViewModel  {
    
    let defaults = UserDefaults.standard
    func validateCredentials (_ email : String, _ password : String) -> Bool{
        if email == "test@test.com" && password == "1234"{
            defaults.setValue(email, forKey: "Email")
            return true
        }else{
            return false
        }
    }
}
